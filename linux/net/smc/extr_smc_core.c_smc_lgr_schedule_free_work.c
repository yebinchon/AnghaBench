
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link_group {scalar_t__ role; int is_smcd; int free_work; } ;


 scalar_t__ SMC_CLNT ;
 int SMC_LGR_FREE_DELAY_CLNT ;
 int SMC_LGR_FREE_DELAY_SERV ;
 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

__attribute__((used)) static void smc_lgr_schedule_free_work(struct smc_link_group *lgr)
{




 mod_delayed_work(system_wq, &lgr->free_work,
    (!lgr->is_smcd && lgr->role == SMC_CLNT) ?
    SMC_LGR_FREE_DELAY_CLNT : SMC_LGR_FREE_DELAY_SERV);
}
