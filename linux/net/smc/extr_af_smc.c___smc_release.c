
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; TYPE_1__* sk_prot; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; } ;
struct smc_sock {int conn; int use_fallback; scalar_t__ clcsock; struct sock sk; } ;
struct TYPE_2__ {int (* unhash ) (struct sock*) ;} ;


 int SHUTDOWN_MASK ;
 int SHUT_RDWR ;
 scalar_t__ SMC_CLOSED ;
 scalar_t__ SMC_INIT ;
 scalar_t__ SMC_LISTEN ;
 int SOCK_DEAD ;
 int kernel_sock_shutdown (scalar_t__,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int smc_clcsock_release (struct smc_sock*) ;
 int smc_close_active (struct smc_sock*) ;
 int smc_conn_free (int *) ;
 int smc_restore_fallback_changes (struct smc_sock*) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static int __smc_release(struct smc_sock *smc)
{
 struct sock *sk = &smc->sk;
 int rc = 0;

 if (!smc->use_fallback) {
  rc = smc_close_active(smc);
  sock_set_flag(sk, SOCK_DEAD);
  sk->sk_shutdown |= SHUTDOWN_MASK;
 } else {
  if (sk->sk_state != SMC_LISTEN && sk->sk_state != SMC_INIT)
   sock_put(sk);
  if (sk->sk_state == SMC_LISTEN) {

   rc = kernel_sock_shutdown(smc->clcsock, SHUT_RDWR);
  }
  sk->sk_state = SMC_CLOSED;
  sk->sk_state_change(sk);
  smc_restore_fallback_changes(smc);
 }

 sk->sk_prot->unhash(sk);

 if (sk->sk_state == SMC_CLOSED) {
  if (smc->clcsock) {
   release_sock(sk);
   smc_clcsock_release(smc);
   lock_sock(sk);
  }
  if (!smc->use_fallback)
   smc_conn_free(&smc->conn);
 }

 return rc;
}
