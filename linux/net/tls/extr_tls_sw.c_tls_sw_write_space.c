
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct tls_sw_context_tx {TYPE_1__ tx_work; int tx_bitmask; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;


 int BIT_TX_SCHEDULED ;
 scalar_t__ is_tx_ready (struct tls_sw_context_tx*) ;
 int schedule_delayed_work (int *,int ) ;
 int test_and_set_bit (int ,int *) ;
 struct tls_sw_context_tx* tls_sw_ctx_tx (struct tls_context*) ;

void tls_sw_write_space(struct sock *sk, struct tls_context *ctx)
{
 struct tls_sw_context_tx *tx_ctx = tls_sw_ctx_tx(ctx);


 if (is_tx_ready(tx_ctx) &&
     !test_and_set_bit(BIT_TX_SCHEDULED, &tx_ctx->tx_bitmask))
  schedule_delayed_work(&tx_ctx->tx_work.work, 0);
}
