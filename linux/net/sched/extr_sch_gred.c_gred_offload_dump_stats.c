
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* qstats; TYPE_2__* bstats; int ** xstats; } ;
struct tc_gred_qopt_offload {TYPE_5__ stats; int parent; int handle; int command; } ;
struct gred_sched {TYPE_1__** tab; } ;
struct TYPE_8__ {int overlimits; int requeues; int drops; int backlog; int qlen; } ;
struct Qdisc {TYPE_3__ qstats; int bstats; int parent; int handle; } ;
struct TYPE_9__ {scalar_t__ overlimits; scalar_t__ requeues; scalar_t__ drops; scalar_t__ backlog; scalar_t__ qlen; } ;
struct TYPE_7__ {scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_6__ {int backlog; int bytesin; int packetsin; int stats; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int MAX_DPs ;
 int TC_GRED_STATS ;
 int TC_SETUP_QDISC_GRED ;
 int _bstats_update (int *,scalar_t__,scalar_t__) ;
 int kfree (struct tc_gred_qopt_offload*) ;
 struct tc_gred_qopt_offload* kzalloc (int,int ) ;
 int qdisc_offload_dump_helper (struct Qdisc*,int ,struct tc_gred_qopt_offload*) ;
 struct gred_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int gred_offload_dump_stats(struct Qdisc *sch)
{
 struct gred_sched *table = qdisc_priv(sch);
 struct tc_gred_qopt_offload *hw_stats;
 unsigned int i;
 int ret;

 hw_stats = kzalloc(sizeof(*hw_stats), GFP_KERNEL);
 if (!hw_stats)
  return -ENOMEM;

 hw_stats->command = TC_GRED_STATS;
 hw_stats->handle = sch->handle;
 hw_stats->parent = sch->parent;

 for (i = 0; i < MAX_DPs; i++)
  if (table->tab[i])
   hw_stats->stats.xstats[i] = &table->tab[i]->stats;

 ret = qdisc_offload_dump_helper(sch, TC_SETUP_QDISC_GRED, hw_stats);



 for (i = 0; i < MAX_DPs; i++) {
  if (!table->tab[i])
   continue;
  table->tab[i]->packetsin += hw_stats->stats.bstats[i].packets;
  table->tab[i]->bytesin += hw_stats->stats.bstats[i].bytes;
  table->tab[i]->backlog += hw_stats->stats.qstats[i].backlog;

  _bstats_update(&sch->bstats,
          hw_stats->stats.bstats[i].bytes,
          hw_stats->stats.bstats[i].packets);
  sch->qstats.qlen += hw_stats->stats.qstats[i].qlen;
  sch->qstats.backlog += hw_stats->stats.qstats[i].backlog;
  sch->qstats.drops += hw_stats->stats.qstats[i].drops;
  sch->qstats.requeues += hw_stats->stats.qstats[i].requeues;
  sch->qstats.overlimits += hw_stats->stats.qstats[i].overlimits;
 }

 kfree(hw_stats);
 return ret;
}
