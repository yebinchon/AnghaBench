
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int (* sk_data_ready ) (struct sock*) ;} ;
struct smc_sock {struct sock sk; struct smc_sock* listen_smc; } ;


 int SINGLE_DEPTH_NESTING ;
 scalar_t__ SMC_LISTEN ;
 int lock_sock_nested (struct sock*,int ) ;
 int release_sock (struct sock*) ;
 int smc_accept_enqueue (struct sock*,struct sock*) ;
 int smc_close_non_accepted (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void smc_listen_out(struct smc_sock *new_smc)
{
 struct smc_sock *lsmc = new_smc->listen_smc;
 struct sock *newsmcsk = &new_smc->sk;

 if (lsmc->sk.sk_state == SMC_LISTEN) {
  lock_sock_nested(&lsmc->sk, SINGLE_DEPTH_NESTING);
  smc_accept_enqueue(&lsmc->sk, newsmcsk);
  release_sock(&lsmc->sk);
 } else {
  smc_close_non_accepted(newsmcsk);
 }


 lsmc->sk.sk_data_ready(&lsmc->sk);
 sock_put(&lsmc->sk);
}
