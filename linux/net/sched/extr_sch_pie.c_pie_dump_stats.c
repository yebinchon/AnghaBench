
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tc_pie_xstats {int delay; int avg_dq_rate; int ecn_mark; int dropped; int maxq; int overlimit; int packets_in; int prob; } ;
struct TYPE_3__ {int ecn_mark; int dropped; int maxq; int overlimit; int packets_in; } ;
struct TYPE_4__ {int avg_dq_rate; int qdelay; int prob; } ;
struct pie_sched_data {TYPE_1__ stats; TYPE_2__ vars; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef int st ;


 int NSEC_PER_USEC ;
 int PIE_SCALE ;
 int PSCHED_TICKS2NS (int ) ;
 int PSCHED_TICKS_PER_SEC ;
 int gnet_stats_copy_app (struct gnet_dump*,struct tc_pie_xstats*,int) ;
 struct pie_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int pie_dump_stats(struct Qdisc *sch, struct gnet_dump *d)
{
 struct pie_sched_data *q = qdisc_priv(sch);
 struct tc_pie_xstats st = {
  .prob = q->vars.prob,
  .delay = ((u32)PSCHED_TICKS2NS(q->vars.qdelay)) /
       NSEC_PER_USEC,

  .avg_dq_rate = q->vars.avg_dq_rate *
      (PSCHED_TICKS_PER_SEC) >> PIE_SCALE,
  .packets_in = q->stats.packets_in,
  .overlimit = q->stats.overlimit,
  .maxq = q->stats.maxq,
  .dropped = q->stats.dropped,
  .ecn_mark = q->stats.ecn_mark,
 };

 return gnet_stats_copy_app(d, &st, sizeof(st));
}
