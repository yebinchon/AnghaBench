
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int llc_testlink_wrk; int state; } ;


 int SMC_LNK_INACTIVE ;
 int cancel_delayed_work (int *) ;

void smc_llc_link_inactive(struct smc_link *link)
{
 link->state = SMC_LNK_INACTIVE;
 cancel_delayed_work(&link->llc_testlink_wrk);
}
