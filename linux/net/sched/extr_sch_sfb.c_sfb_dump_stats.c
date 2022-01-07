
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_sfb_xstats {int avgprob; int maxprob; int maxqlen; int marked; int childdrop; int queuedrop; int bucketdrop; int penaltydrop; int earlydrop; } ;
struct TYPE_2__ {int marked; int childdrop; int queuedrop; int bucketdrop; int penaltydrop; int earlydrop; } ;
struct sfb_sched_data {TYPE_1__ stats; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef int st ;


 int gnet_stats_copy_app (struct gnet_dump*,struct tc_sfb_xstats*,int) ;
 struct sfb_sched_data* qdisc_priv (struct Qdisc*) ;
 int sfb_compute_qlen (int *,int *,struct sfb_sched_data*) ;

__attribute__((used)) static int sfb_dump_stats(struct Qdisc *sch, struct gnet_dump *d)
{
 struct sfb_sched_data *q = qdisc_priv(sch);
 struct tc_sfb_xstats st = {
  .earlydrop = q->stats.earlydrop,
  .penaltydrop = q->stats.penaltydrop,
  .bucketdrop = q->stats.bucketdrop,
  .queuedrop = q->stats.queuedrop,
  .childdrop = q->stats.childdrop,
  .marked = q->stats.marked,
 };

 st.maxqlen = sfb_compute_qlen(&st.maxprob, &st.avgprob, q);

 return gnet_stats_copy_app(d, &st, sizeof(st));
}
