
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct smc_sock {int conn; struct sock sk; } ;


 scalar_t__ SMC_CLOSED ;
 scalar_t__ SMC_INIT ;
 int smc_conn_free (int *) ;
 int smc_listen_out (struct smc_sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void smc_listen_out_err(struct smc_sock *new_smc)
{
 struct sock *newsmcsk = &new_smc->sk;

 if (newsmcsk->sk_state == SMC_INIT)
  sock_put(&new_smc->sk);
 newsmcsk->sk_state = SMC_CLOSED;
 smc_conn_free(&new_smc->conn);

 smc_listen_out(new_smc);
}
