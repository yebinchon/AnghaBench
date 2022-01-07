
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iv; int rec_seq; } ;
struct tls_context {scalar_t__ tx_conf; scalar_t__ rx_conf; TYPE_1__ tx; } ;


 scalar_t__ TLS_HW ;
 int kfree (int ) ;
 int tls_ctx_free (int *,struct tls_context*) ;
 int tls_offload_ctx_rx (struct tls_context*) ;
 int tls_offload_ctx_tx (struct tls_context*) ;

__attribute__((used)) static void tls_device_free_ctx(struct tls_context *ctx)
{
 if (ctx->tx_conf == TLS_HW) {
  kfree(tls_offload_ctx_tx(ctx));
  kfree(ctx->tx.rec_seq);
  kfree(ctx->tx.iv);
 }

 if (ctx->rx_conf == TLS_HW)
  kfree(tls_offload_ctx_rx(ctx));

 tls_ctx_free(((void*)0), ctx);
}
