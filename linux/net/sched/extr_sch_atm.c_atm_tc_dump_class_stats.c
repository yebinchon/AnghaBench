
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gnet_dump {int dummy; } ;
struct atm_flow_data {TYPE_2__* q; int qstats; int bstats; } ;
struct Qdisc {int dummy; } ;
struct TYPE_3__ {int qlen; } ;
struct TYPE_4__ {TYPE_1__ q; } ;


 scalar_t__ gnet_stats_copy_basic (int ,struct gnet_dump*,int *,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,int *,int *,int ) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;

__attribute__((used)) static int
atm_tc_dump_class_stats(struct Qdisc *sch, unsigned long arg,
   struct gnet_dump *d)
{
 struct atm_flow_data *flow = (struct atm_flow_data *)arg;

 if (gnet_stats_copy_basic(qdisc_root_sleeping_running(sch),
      d, ((void*)0), &flow->bstats) < 0 ||
     gnet_stats_copy_queue(d, ((void*)0), &flow->qstats, flow->q->q.qlen) < 0)
  return -1;

 return 0;
}
