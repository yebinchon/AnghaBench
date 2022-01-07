
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xstats ;
struct tc_qfq_stats {int lmax; int weight; } ;
struct qfq_class {int qdisc; int rate_est; int bstats; TYPE_1__* agg; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int lmax; int class_weight; } ;


 int gnet_stats_copy_app (struct gnet_dump*,struct tc_qfq_stats*,int) ;
 scalar_t__ gnet_stats_copy_basic (int ,struct gnet_dump*,int *,int *) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;
 int memset (struct tc_qfq_stats*,int ,int) ;
 scalar_t__ qdisc_qstats_copy (struct gnet_dump*,int ) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;

__attribute__((used)) static int qfq_dump_class_stats(struct Qdisc *sch, unsigned long arg,
    struct gnet_dump *d)
{
 struct qfq_class *cl = (struct qfq_class *)arg;
 struct tc_qfq_stats xstats;

 memset(&xstats, 0, sizeof(xstats));

 xstats.weight = cl->agg->class_weight;
 xstats.lmax = cl->agg->lmax;

 if (gnet_stats_copy_basic(qdisc_root_sleeping_running(sch),
      d, ((void*)0), &cl->bstats) < 0 ||
     gnet_stats_copy_rate_est(d, &cl->rate_est) < 0 ||
     qdisc_qstats_copy(d, cl->qdisc) < 0)
  return -1;

 return gnet_stats_copy_app(d, &xstats, sizeof(xstats));
}
