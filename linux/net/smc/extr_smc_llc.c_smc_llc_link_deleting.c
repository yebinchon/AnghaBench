
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int state; } ;


 int SMC_LNK_DELETING ;

void smc_llc_link_deleting(struct smc_link *link)
{
 link->state = SMC_LNK_DELETING;
}
