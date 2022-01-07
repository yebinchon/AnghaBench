
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int llc_wq; } ;


 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;

void smc_llc_link_clear(struct smc_link *link)
{
 flush_workqueue(link->llc_wq);
 destroy_workqueue(link->llc_wq);
}
