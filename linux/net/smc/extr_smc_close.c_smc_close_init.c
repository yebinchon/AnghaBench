
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int close_work; } ;
struct smc_sock {TYPE_1__ conn; } ;


 int INIT_WORK (int *,int ) ;
 int smc_close_passive_work ;

void smc_close_init(struct smc_sock *smc)
{
 INIT_WORK(&smc->conn.close_work, smc_close_passive_work);
}
