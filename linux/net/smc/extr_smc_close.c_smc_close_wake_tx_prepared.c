
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* sk_state_change ) (TYPE_1__*) ;} ;
struct smc_sock {TYPE_1__ sk; scalar_t__ wait_close_tx_prepared; } ;


 int stub1 (TYPE_1__*) ;

void smc_close_wake_tx_prepared(struct smc_sock *smc)
{
 if (smc->wait_close_tx_prepared)

  smc->sk.sk_state_change(&smc->sk);
}
