
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* ctokens; void* tokens; } ;
struct TYPE_3__ {scalar_t__ q; } ;
struct htb_class {TYPE_2__ xstats; int rate_est; int bstats; int ctokens; int tokens; TYPE_1__ leaf; int level; int overlimits; int drops; } ;
struct gnet_stats_queue {int backlog; int overlimits; int drops; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef int __u32 ;


 int INT_MAX ;
 int INT_MIN ;
 int PSCHED_NS2TICKS (int ) ;
 void* clamp_t (int ,int ,int ,int ) ;
 int gnet_stats_copy_app (struct gnet_dump*,TYPE_2__*,int) ;
 scalar_t__ gnet_stats_copy_basic (int ,struct gnet_dump*,int *,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,int *,struct gnet_stats_queue*,int ) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;
 int qdisc_qstats_qlen_backlog (scalar_t__,int *,int *) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;
 int s64 ;

__attribute__((used)) static int
htb_dump_class_stats(struct Qdisc *sch, unsigned long arg, struct gnet_dump *d)
{
 struct htb_class *cl = (struct htb_class *)arg;
 struct gnet_stats_queue qs = {
  .drops = cl->drops,
  .overlimits = cl->overlimits,
 };
 __u32 qlen = 0;

 if (!cl->level && cl->leaf.q)
  qdisc_qstats_qlen_backlog(cl->leaf.q, &qlen, &qs.backlog);

 cl->xstats.tokens = clamp_t(s64, PSCHED_NS2TICKS(cl->tokens),
        INT_MIN, INT_MAX);
 cl->xstats.ctokens = clamp_t(s64, PSCHED_NS2TICKS(cl->ctokens),
         INT_MIN, INT_MAX);

 if (gnet_stats_copy_basic(qdisc_root_sleeping_running(sch),
      d, ((void*)0), &cl->bstats) < 0 ||
     gnet_stats_copy_rate_est(d, &cl->rate_est) < 0 ||
     gnet_stats_copy_queue(d, ((void*)0), &qs, qlen) < 0)
  return -1;

 return gnet_stats_copy_app(d, &cl->xstats, sizeof(cl->xstats));
}
