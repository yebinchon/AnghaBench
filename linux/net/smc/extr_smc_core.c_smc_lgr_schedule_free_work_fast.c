
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link_group {int free_work; } ;


 int SMC_LGR_FREE_DELAY_FAST ;
 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

void smc_lgr_schedule_free_work_fast(struct smc_link_group *lgr)
{
 mod_delayed_work(system_wq, &lgr->free_work, SMC_LGR_FREE_DELAY_FAST);
}
