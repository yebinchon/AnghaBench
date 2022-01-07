
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {struct proto* sk_proto; } ;
struct sock {struct proto* sk_prot; } ;
struct proto {int dummy; } ;


 scalar_t__ likely (struct tls_context*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;

__attribute__((used)) static void tls_update(struct sock *sk, struct proto *p)
{
 struct tls_context *ctx;

 ctx = tls_get_ctx(sk);
 if (likely(ctx))
  ctx->sk_proto = p;
 else
  sk->sk_prot = p;
}
