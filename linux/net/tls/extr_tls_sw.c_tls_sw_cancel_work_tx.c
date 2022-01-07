
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct tls_sw_context_tx {TYPE_1__ tx_work; int tx_bitmask; } ;
struct tls_context {int dummy; } ;


 int BIT_TX_CLOSING ;
 int BIT_TX_SCHEDULED ;
 int cancel_delayed_work_sync (int *) ;
 int set_bit (int ,int *) ;
 struct tls_sw_context_tx* tls_sw_ctx_tx (struct tls_context*) ;

void tls_sw_cancel_work_tx(struct tls_context *tls_ctx)
{
 struct tls_sw_context_tx *ctx = tls_sw_ctx_tx(tls_ctx);

 set_bit(BIT_TX_CLOSING, &ctx->tx_bitmask);
 set_bit(BIT_TX_SCHEDULED, &ctx->tx_bitmask);
 cancel_delayed_work_sync(&ctx->tx_work.work);
}
