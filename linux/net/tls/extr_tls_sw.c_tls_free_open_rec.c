
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_tx {struct tls_rec* open_rec; } ;
struct tls_rec {int dummy; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;


 int tls_free_rec (struct sock*,struct tls_rec*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_tx* tls_sw_ctx_tx (struct tls_context*) ;

__attribute__((used)) static void tls_free_open_rec(struct sock *sk)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_sw_context_tx *ctx = tls_sw_ctx_tx(tls_ctx);
 struct tls_rec *rec = ctx->open_rec;

 if (rec) {
  tls_free_rec(sk, rec);
  ctx->open_rec = ((void*)0);
 }
}
