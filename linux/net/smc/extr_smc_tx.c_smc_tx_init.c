
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk_write_space; } ;
struct smc_sock {TYPE_1__ sk; } ;


 int smc_tx_write_space ;

void smc_tx_init(struct smc_sock *smc)
{
 smc->sk.sk_write_space = smc_tx_write_space;
}
