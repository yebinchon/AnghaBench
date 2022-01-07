
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
struct smc_sock {int tcp_listen_work; TYPE_2__* clcsock; int use_fallback; scalar_t__ connect_nonblock; } ;
struct TYPE_4__ {int sk; } ;
struct TYPE_3__ {int syn_smc; } ;


 int EINVAL ;
 scalar_t__ SMC_INIT ;
 scalar_t__ SMC_LISTEN ;
 int kernel_listen (TYPE_2__*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int schedule_work (int *) ;
 int smc_copy_sock_settings_to_clc (struct smc_sock*) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 TYPE_1__* tcp_sk (int ) ;

__attribute__((used)) static int smc_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 struct smc_sock *smc;
 int rc;

 smc = smc_sk(sk);
 lock_sock(sk);

 rc = -EINVAL;
 if ((sk->sk_state != SMC_INIT && sk->sk_state != SMC_LISTEN) ||
     smc->connect_nonblock)
  goto out;

 rc = 0;
 if (sk->sk_state == SMC_LISTEN) {
  sk->sk_max_ack_backlog = backlog;
  goto out;
 }



 smc_copy_sock_settings_to_clc(smc);
 if (!smc->use_fallback)
  tcp_sk(smc->clcsock->sk)->syn_smc = 1;

 rc = kernel_listen(smc->clcsock, backlog);
 if (rc)
  goto out;
 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;
 sk->sk_state = SMC_LISTEN;
 sock_hold(sk);
 if (!schedule_work(&smc->tcp_listen_work))
  sock_put(sk);

out:
 release_sock(sk);
 return rc;
}
