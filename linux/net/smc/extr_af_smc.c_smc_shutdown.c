
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; } ;
struct smc_sock {TYPE_2__* clcsock; scalar_t__ use_fallback; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_shutdown; } ;


 int EINVAL ;
 int ENOTCONN ;
 int SHUTDOWN_MASK ;



 scalar_t__ SMC_ACTIVE ;
 scalar_t__ SMC_APPCLOSEWAIT1 ;
 scalar_t__ SMC_APPCLOSEWAIT2 ;
 scalar_t__ SMC_APPFINCLOSEWAIT ;
 scalar_t__ SMC_CLOSED ;
 scalar_t__ SMC_PEERCLOSEWAIT1 ;
 scalar_t__ SMC_PEERCLOSEWAIT2 ;
 int kernel_sock_shutdown (TYPE_2__*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int smc_close_active (struct smc_sock*) ;
 int smc_close_shutdown_write (struct smc_sock*) ;
 struct smc_sock* smc_sk (struct sock*) ;

__attribute__((used)) static int smc_shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 struct smc_sock *smc;
 int rc = -EINVAL;
 int rc1 = 0;

 smc = smc_sk(sk);

 if ((how < 130) || (how > 129))
  return rc;

 lock_sock(sk);

 rc = -ENOTCONN;
 if ((sk->sk_state != SMC_ACTIVE) &&
     (sk->sk_state != SMC_PEERCLOSEWAIT1) &&
     (sk->sk_state != SMC_PEERCLOSEWAIT2) &&
     (sk->sk_state != SMC_APPCLOSEWAIT1) &&
     (sk->sk_state != SMC_APPCLOSEWAIT2) &&
     (sk->sk_state != SMC_APPFINCLOSEWAIT))
  goto out;
 if (smc->use_fallback) {
  rc = kernel_sock_shutdown(smc->clcsock, how);
  sk->sk_shutdown = smc->clcsock->sk->sk_shutdown;
  if (sk->sk_shutdown == SHUTDOWN_MASK)
   sk->sk_state = SMC_CLOSED;
  goto out;
 }
 switch (how) {
 case 129:
  rc = smc_close_active(smc);
  break;
 case 128:
  rc = smc_close_shutdown_write(smc);
  break;
 case 130:
  rc = 0;

  break;
 }
 if (smc->clcsock)
  rc1 = kernel_sock_shutdown(smc->clcsock, how);

 sk->sk_shutdown |= how + 1;

out:
 release_sock(sk);
 return rc ? rc : rc1;
}
