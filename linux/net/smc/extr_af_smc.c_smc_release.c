
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct smc_sock {int connect_work; TYPE_1__* clcsock; scalar_t__ connect_nonblock; } ;
struct TYPE_2__ {int sk; } ;


 int ECONNABORTED ;
 int SINGLE_DEPTH_NESTING ;
 scalar_t__ SMC_INIT ;
 scalar_t__ SMC_LISTEN ;
 int __smc_release (struct smc_sock*) ;
 int flush_work (int *) ;
 int lock_sock (struct sock*) ;
 int lock_sock_nested (struct sock*,int ) ;
 int release_sock (struct sock*) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int tcp_abort (int ,int ) ;

__attribute__((used)) static int smc_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct smc_sock *smc;
 int rc = 0;

 if (!sk)
  goto out;

 smc = smc_sk(sk);


 if (smc->connect_nonblock && sk->sk_state == SMC_INIT)
  tcp_abort(smc->clcsock->sk, ECONNABORTED);
 flush_work(&smc->connect_work);

 if (sk->sk_state == SMC_LISTEN)



  lock_sock_nested(sk, SINGLE_DEPTH_NESTING);
 else
  lock_sock(sk);

 rc = __smc_release(smc);


 sock_orphan(sk);
 sock->sk = ((void*)0);
 release_sock(sk);

 sock_put(sk);
out:
 return rc;
}
