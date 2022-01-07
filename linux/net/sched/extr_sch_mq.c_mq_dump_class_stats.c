
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int bstats; int running; } ;


 scalar_t__ gnet_stats_copy_basic (int *,struct gnet_dump*,int *,int *) ;
 struct netdev_queue* mq_queue_get (struct Qdisc*,unsigned long) ;
 scalar_t__ qdisc_qstats_copy (struct gnet_dump*,struct Qdisc*) ;

__attribute__((used)) static int mq_dump_class_stats(struct Qdisc *sch, unsigned long cl,
          struct gnet_dump *d)
{
 struct netdev_queue *dev_queue = mq_queue_get(sch, cl);

 sch = dev_queue->qdisc_sleeping;
 if (gnet_stats_copy_basic(&sch->running, d, ((void*)0), &sch->bstats) < 0 ||
     qdisc_qstats_copy(d, sch) < 0)
  return -1;
 return 0;
}
