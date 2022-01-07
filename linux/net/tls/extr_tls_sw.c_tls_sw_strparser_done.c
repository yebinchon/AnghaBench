
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_rx {int strp; } ;
struct tls_context {int dummy; } ;


 int strp_done (int *) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;

void tls_sw_strparser_done(struct tls_context *tls_ctx)
{
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);

 strp_done(&ctx->strp);
}
