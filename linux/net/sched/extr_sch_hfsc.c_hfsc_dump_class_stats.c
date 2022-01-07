
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xstats ;
struct tc_hfsc_stats {int rtwork; int work; int period; int level; } ;
struct TYPE_2__ {int backlog; } ;
struct hfsc_class {TYPE_1__ qstats; int rate_est; int bstats; int cl_cumul; int cl_total; int cl_vtperiod; int level; int qdisc; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef int __u32 ;


 int gnet_stats_copy_app (struct gnet_dump*,struct tc_hfsc_stats*,int) ;
 scalar_t__ gnet_stats_copy_basic (int ,struct gnet_dump*,int *,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,int *,TYPE_1__*,int ) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;
 int qdisc_qstats_qlen_backlog (int ,int *,int *) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;

__attribute__((used)) static int
hfsc_dump_class_stats(struct Qdisc *sch, unsigned long arg,
 struct gnet_dump *d)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;
 struct tc_hfsc_stats xstats;
 __u32 qlen;

 qdisc_qstats_qlen_backlog(cl->qdisc, &qlen, &cl->qstats.backlog);
 xstats.level = cl->level;
 xstats.period = cl->cl_vtperiod;
 xstats.work = cl->cl_total;
 xstats.rtwork = cl->cl_cumul;

 if (gnet_stats_copy_basic(qdisc_root_sleeping_running(sch), d, ((void*)0), &cl->bstats) < 0 ||
     gnet_stats_copy_rate_est(d, &cl->rate_est) < 0 ||
     gnet_stats_copy_queue(d, ((void*)0), &cl->qstats, qlen) < 0)
  return -1;

 return gnet_stats_copy_app(d, &xstats, sizeof(xstats));
}
