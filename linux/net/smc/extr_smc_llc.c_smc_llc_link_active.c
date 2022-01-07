
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int llc_testlink_time; int llc_testlink_wrk; int llc_wq; int state; } ;


 int HZ ;
 int SMC_LNK_ACTIVE ;
 int queue_delayed_work (int ,int *,int) ;

void smc_llc_link_active(struct smc_link *link, int testlink_time)
{
 link->state = SMC_LNK_ACTIVE;
 if (testlink_time) {
  link->llc_testlink_time = testlink_time * HZ;
  queue_delayed_work(link->llc_wq, &link->llc_testlink_wrk,
       link->llc_testlink_time);
 }
}
