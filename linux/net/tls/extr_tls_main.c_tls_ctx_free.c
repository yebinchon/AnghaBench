
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int tx_lock; int crypto_recv; int crypto_send; } ;
struct sock {int dummy; } ;


 int kfree (struct tls_context*) ;
 int kfree_rcu (struct tls_context*,int ) ;
 int memzero_explicit (int *,int) ;
 int mutex_destroy (int *) ;
 int rcu ;

void tls_ctx_free(struct sock *sk, struct tls_context *ctx)
{
 if (!ctx)
  return;

 memzero_explicit(&ctx->crypto_send, sizeof(ctx->crypto_send));
 memzero_explicit(&ctx->crypto_recv, sizeof(ctx->crypto_recv));
 mutex_destroy(&ctx->tx_lock);

 if (sk)
  kfree_rcu(ctx, rcu);
 else
  kfree(ctx);
}
