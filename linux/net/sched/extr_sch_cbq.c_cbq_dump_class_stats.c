
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gnet_dump {int dummy; } ;
struct cbq_sched_data {scalar_t__ now; } ;
struct TYPE_4__ {scalar_t__ undertime; int avgidle; } ;
struct TYPE_3__ {int backlog; } ;
struct cbq_class {scalar_t__ undertime; TYPE_2__ xstats; TYPE_1__ qstats; int rate_est; int bstats; int q; int avgidle; } ;
struct Qdisc {int dummy; } ;
typedef int __u32 ;


 scalar_t__ PSCHED_PASTPERFECT ;
 int gnet_stats_copy_app (struct gnet_dump*,TYPE_2__*,int) ;
 scalar_t__ gnet_stats_copy_basic (int ,struct gnet_dump*,int *,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,int *,TYPE_1__*,int ) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_qlen_backlog (int ,int *,int *) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;

__attribute__((used)) static int
cbq_dump_class_stats(struct Qdisc *sch, unsigned long arg,
 struct gnet_dump *d)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *cl = (struct cbq_class *)arg;
 __u32 qlen;

 cl->xstats.avgidle = cl->avgidle;
 cl->xstats.undertime = 0;
 qdisc_qstats_qlen_backlog(cl->q, &qlen, &cl->qstats.backlog);

 if (cl->undertime != PSCHED_PASTPERFECT)
  cl->xstats.undertime = cl->undertime - q->now;

 if (gnet_stats_copy_basic(qdisc_root_sleeping_running(sch),
      d, ((void*)0), &cl->bstats) < 0 ||
     gnet_stats_copy_rate_est(d, &cl->rate_est) < 0 ||
     gnet_stats_copy_queue(d, ((void*)0), &cl->qstats, qlen) < 0)
  return -1;

 return gnet_stats_copy_app(d, &cl->xstats, sizeof(cl->xstats));
}
