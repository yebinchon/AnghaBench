
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_tx {int dummy; } ;
struct tls_context {int dummy; } ;


 int kfree (struct tls_sw_context_tx*) ;
 struct tls_sw_context_tx* tls_sw_ctx_tx (struct tls_context*) ;

void tls_sw_free_ctx_tx(struct tls_context *tls_ctx)
{
 struct tls_sw_context_tx *ctx = tls_sw_ctx_tx(tls_ctx);

 kfree(ctx);
}
