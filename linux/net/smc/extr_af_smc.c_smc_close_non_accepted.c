
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_lingertime; } ;
struct smc_sock {int dummy; } ;


 scalar_t__ SMC_MAX_STREAM_WAIT_TIMEOUT ;
 int __smc_release (struct smc_sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int sock_put (struct sock*) ;

void smc_close_non_accepted(struct sock *sk)
{
 struct smc_sock *smc = smc_sk(sk);

 lock_sock(sk);
 if (!sk->sk_lingertime)

  sk->sk_lingertime = SMC_MAX_STREAM_WAIT_TIMEOUT;
 __smc_release(smc);
 release_sock(sk);
 sock_put(sk);
}
