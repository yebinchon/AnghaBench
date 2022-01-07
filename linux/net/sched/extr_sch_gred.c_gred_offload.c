
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int dp_cnt; int * qstats; TYPE_2__* tab; int dp_def; int wred_on; int grio_on; } ;
struct tc_gred_qopt_offload {int command; TYPE_3__ set; int parent; int handle; } ;
struct net_device {TYPE_4__* netdev_ops; } ;
struct TYPE_5__ {int qth_min; int Wlog; int qth_max; int max_P; } ;
struct gred_sched_data {int backlog; TYPE_1__ parms; int prio; int limit; } ;
struct gred_sched {unsigned int DPs; struct gred_sched_data** tab; int def; } ;
struct Qdisc {int qstats; int parent; int handle; } ;
typedef enum tc_gred_command { ____Placeholder_tc_gred_command } tc_gred_command ;
struct TYPE_8__ {int (* ndo_setup_tc ) (struct net_device*,int ,struct tc_gred_qopt_offload*) ;} ;
struct TYPE_6__ {int present; int min; int max; int * backlog; int probability; int is_harddrop; int is_ecn; int prio; int limit; } ;


 int TC_GRED_REPLACE ;
 int TC_SETUP_QDISC_GRED ;
 int gred_rio_mode (struct gred_sched*) ;
 int gred_use_ecn (struct gred_sched_data*) ;
 int gred_use_harddrop (struct gred_sched_data*) ;
 int gred_wred_mode (struct gred_sched*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct gred_sched* qdisc_priv (struct Qdisc*) ;
 int stub1 (struct net_device*,int ,struct tc_gred_qopt_offload*) ;
 int tc_can_offload (struct net_device*) ;

__attribute__((used)) static void gred_offload(struct Qdisc *sch, enum tc_gred_command command)
{
 struct gred_sched *table = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 struct tc_gred_qopt_offload opt = {
  .command = command,
  .handle = sch->handle,
  .parent = sch->parent,
 };

 if (!tc_can_offload(dev) || !dev->netdev_ops->ndo_setup_tc)
  return;

 if (command == TC_GRED_REPLACE) {
  unsigned int i;

  opt.set.grio_on = gred_rio_mode(table);
  opt.set.wred_on = gred_wred_mode(table);
  opt.set.dp_cnt = table->DPs;
  opt.set.dp_def = table->def;

  for (i = 0; i < table->DPs; i++) {
   struct gred_sched_data *q = table->tab[i];

   if (!q)
    continue;
   opt.set.tab[i].present = 1;
   opt.set.tab[i].limit = q->limit;
   opt.set.tab[i].prio = q->prio;
   opt.set.tab[i].min = q->parms.qth_min >> q->parms.Wlog;
   opt.set.tab[i].max = q->parms.qth_max >> q->parms.Wlog;
   opt.set.tab[i].is_ecn = gred_use_ecn(q);
   opt.set.tab[i].is_harddrop = gred_use_harddrop(q);
   opt.set.tab[i].probability = q->parms.max_P;
   opt.set.tab[i].backlog = &q->backlog;
  }
  opt.set.qstats = &sch->qstats;
 }

 dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_QDISC_GRED, &opt);
}
