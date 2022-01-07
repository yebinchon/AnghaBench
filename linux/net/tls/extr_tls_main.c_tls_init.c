
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {void* rx_conf; void* tx_conf; } ;
struct sock {scalar_t__ sk_state; int sk_callback_lock; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 scalar_t__ TCP_ESTABLISHED ;
 void* TLS_BASE ;
 struct tls_context* create_ctx (struct sock*) ;
 int tls_build_proto (struct sock*) ;
 scalar_t__ tls_hw_prot (struct sock*) ;
 int update_sk_prot (struct sock*,struct tls_context*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int tls_init(struct sock *sk)
{
 struct tls_context *ctx;
 int rc = 0;

 if (tls_hw_prot(sk))
  return 0;







 if (sk->sk_state != TCP_ESTABLISHED)
  return -ENOTSUPP;

 tls_build_proto(sk);


 write_lock_bh(&sk->sk_callback_lock);
 ctx = create_ctx(sk);
 if (!ctx) {
  rc = -ENOMEM;
  goto out;
 }

 ctx->tx_conf = TLS_BASE;
 ctx->rx_conf = TLS_BASE;
 update_sk_prot(sk, ctx);
out:
 write_unlock_bh(&sk->sk_callback_lock);
 return rc;
}
