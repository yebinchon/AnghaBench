
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_sock {int sk; } ;
struct smc_cdc_msg {int dummy; } ;


 int bh_lock_sock (int *) ;
 int bh_unlock_sock (int *) ;
 int smc_cdc_msg_recv_action (struct smc_sock*,struct smc_cdc_msg*) ;
 int sock_hold (int *) ;
 int sock_put (int *) ;

__attribute__((used)) static void smc_cdc_msg_recv(struct smc_sock *smc, struct smc_cdc_msg *cdc)
{
 sock_hold(&smc->sk);
 bh_lock_sock(&smc->sk);
 smc_cdc_msg_recv_action(smc, cdc);
 bh_unlock_sock(&smc->sk);
 sock_put(&smc->sk);
}
