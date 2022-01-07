
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xstats ;
struct tc_drr_stats {int deficit; } ;
struct gnet_dump {int dummy; } ;
struct drr_class {int rate_est; int bstats; int deficit; struct Qdisc* qdisc; } ;
struct Qdisc {int qstats; int cpu_qstats; } ;
typedef scalar_t__ __u32 ;


 int gnet_stats_copy_app (struct gnet_dump*,struct tc_drr_stats*,int) ;
 scalar_t__ gnet_stats_copy_basic (int ,struct gnet_dump*,int *,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,int ,int *,scalar_t__) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;
 int memset (struct tc_drr_stats*,int ,int) ;
 scalar_t__ qdisc_qlen_sum (struct Qdisc*) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;

__attribute__((used)) static int drr_dump_class_stats(struct Qdisc *sch, unsigned long arg,
    struct gnet_dump *d)
{
 struct drr_class *cl = (struct drr_class *)arg;
 __u32 qlen = qdisc_qlen_sum(cl->qdisc);
 struct Qdisc *cl_q = cl->qdisc;
 struct tc_drr_stats xstats;

 memset(&xstats, 0, sizeof(xstats));
 if (qlen)
  xstats.deficit = cl->deficit;

 if (gnet_stats_copy_basic(qdisc_root_sleeping_running(sch),
      d, ((void*)0), &cl->bstats) < 0 ||
     gnet_stats_copy_rate_est(d, &cl->rate_est) < 0 ||
     gnet_stats_copy_queue(d, cl_q->cpu_qstats, &cl_q->qstats, qlen) < 0)
  return -1;

 return gnet_stats_copy_app(d, &xstats, sizeof(xstats));
}
