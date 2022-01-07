
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int tcm_parent; } ;
struct netdev_queue {int dummy; } ;
struct Qdisc {int dummy; } ;


 int TC_H_MIN (int ) ;
 struct netdev_queue* mq_queue_get (struct Qdisc*,int ) ;

__attribute__((used)) static struct netdev_queue *mq_select_queue(struct Qdisc *sch,
         struct tcmsg *tcm)
{
 return mq_queue_get(sch, TC_H_MIN(tcm->tcm_parent));
}
