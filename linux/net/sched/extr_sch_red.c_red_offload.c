
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int min; int max; int * qstats; int is_harddrop; int is_ecn; int limit; int probability; } ;
struct tc_red_qopt_offload {int command; TYPE_2__ set; int parent; int handle; } ;
struct TYPE_4__ {int qth_min; int Wlog; int qth_max; int max_P; } ;
struct red_sched_data {int limit; TYPE_1__ parms; } ;
struct net_device {TYPE_3__* netdev_ops; } ;
struct Qdisc {int qstats; int parent; int handle; } ;
struct TYPE_6__ {int (* ndo_setup_tc ) (struct net_device*,int ,struct tc_red_qopt_offload*) ;} ;


 int EOPNOTSUPP ;
 int TC_RED_DESTROY ;
 int TC_RED_REPLACE ;
 int TC_SETUP_QDISC_RED ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int red_use_ecn (struct red_sched_data*) ;
 int red_use_harddrop (struct red_sched_data*) ;
 int stub1 (struct net_device*,int ,struct tc_red_qopt_offload*) ;
 int tc_can_offload (struct net_device*) ;

__attribute__((used)) static int red_offload(struct Qdisc *sch, bool enable)
{
 struct red_sched_data *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 struct tc_red_qopt_offload opt = {
  .handle = sch->handle,
  .parent = sch->parent,
 };

 if (!tc_can_offload(dev) || !dev->netdev_ops->ndo_setup_tc)
  return -EOPNOTSUPP;

 if (enable) {
  opt.command = TC_RED_REPLACE;
  opt.set.min = q->parms.qth_min >> q->parms.Wlog;
  opt.set.max = q->parms.qth_max >> q->parms.Wlog;
  opt.set.probability = q->parms.max_P;
  opt.set.limit = q->limit;
  opt.set.is_ecn = red_use_ecn(q);
  opt.set.is_harddrop = red_use_harddrop(q);
  opt.set.qstats = &sch->qstats;
 } else {
  opt.command = TC_RED_DESTROY;
 }

 return dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_QDISC_RED, &opt);
}
