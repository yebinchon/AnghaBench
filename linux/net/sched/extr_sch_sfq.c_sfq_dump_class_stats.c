
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xstats ;
struct tc_sfq_xstats {int allot; int member_0; } ;
struct sfq_slot {int allot; int backlog; int qlen; } ;
struct sfq_sched_data {size_t* ht; struct sfq_slot* slots; } ;
struct gnet_stats_queue {int qlen; int backlog; int member_0; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef size_t sfq_index ;


 int SFQ_ALLOT_SHIFT ;
 size_t SFQ_EMPTY_SLOT ;
 int gnet_stats_copy_app (struct gnet_dump*,struct tc_sfq_xstats*,int) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,int *,struct gnet_stats_queue*,int ) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int sfq_dump_class_stats(struct Qdisc *sch, unsigned long cl,
    struct gnet_dump *d)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 sfq_index idx = q->ht[cl - 1];
 struct gnet_stats_queue qs = { 0 };
 struct tc_sfq_xstats xstats = { 0 };

 if (idx != SFQ_EMPTY_SLOT) {
  const struct sfq_slot *slot = &q->slots[idx];

  xstats.allot = slot->allot << SFQ_ALLOT_SHIFT;
  qs.qlen = slot->qlen;
  qs.backlog = slot->backlog;
 }
 if (gnet_stats_copy_queue(d, ((void*)0), &qs, qs.qlen) < 0)
  return -1;
 return gnet_stats_copy_app(d, &xstats, sizeof(xstats));
}
