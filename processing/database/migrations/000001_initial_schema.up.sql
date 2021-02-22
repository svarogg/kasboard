CREATE TABLE blocks
(
    id            BIGSERIAL,
    block_hash    CHAR(64)                       NOT NULL,
    timestamp     BIGINT                         NOT NULL,
    blue_score    BIGINT CHECK (blue_score >= 0) NOT NULL,
    hashrate      BIGINT                         NOT NULL,
    parent_amount SMALLINT                       NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE analyzed_blocks
(
    id                    BIGINT   NOT NULL,
    timestamp             BIGINT   NOT NULL,
    average_parent_amount NUMERIC NOT NULL,
    PRIMARY KEY (id)
)