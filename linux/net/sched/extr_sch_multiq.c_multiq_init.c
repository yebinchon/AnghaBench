
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct multiq_sched_data {int max_bands; int ** queues; int filter_list; int block; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int num_tx_queues; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int ** kcalloc (int,int,int ) ;
 int multiq_tune (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int noop_qdisc ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;

__attribute__((used)) static int multiq_init(struct Qdisc *sch, struct nlattr *opt,
         struct netlink_ext_ack *extack)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 int i, err;

 q->queues = ((void*)0);

 if (!opt)
  return -EINVAL;

 err = tcf_block_get(&q->block, &q->filter_list, sch, extack);
 if (err)
  return err;

 q->max_bands = qdisc_dev(sch)->num_tx_queues;

 q->queues = kcalloc(q->max_bands, sizeof(struct Qdisc *), GFP_KERNEL);
 if (!q->queues)
  return -ENOBUFS;
 for (i = 0; i < q->max_bands; i++)
  q->queues[i] = &noop_qdisc;

 return multiq_tune(sch, opt, extack);
}
