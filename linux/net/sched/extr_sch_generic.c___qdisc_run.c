
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {int dummy; } ;


 int __netif_schedule (struct Qdisc*) ;
 int dev_tx_weight ;
 scalar_t__ need_resched () ;
 scalar_t__ qdisc_restart (struct Qdisc*,int*) ;

void __qdisc_run(struct Qdisc *q)
{
 int quota = dev_tx_weight;
 int packets;

 while (qdisc_restart(q, &packets)) {





  quota -= packets;
  if (quota <= 0 || need_resched()) {
   __netif_schedule(q);
   break;
  }
 }
}
