
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long band; int child_handle; } ;
struct tc_prio_qopt_offload {int command; TYPE_1__ graft_params; int parent; int handle; } ;
struct prio_sched_data {int * queues; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int handle; int parent; } ;


 int TC_PRIO_GRAFT ;
 int TC_SETUP_QDISC_PRIO ;
 struct Qdisc noop_qdisc ;
 int qdisc_dev (struct Qdisc*) ;
 int qdisc_offload_graft_helper (int ,struct Qdisc*,struct Qdisc*,struct Qdisc*,int ,struct tc_prio_qopt_offload*,struct netlink_ext_ack*) ;
 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 struct Qdisc* qdisc_replace (struct Qdisc*,struct Qdisc*,int *) ;

__attribute__((used)) static int prio_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
        struct Qdisc **old, struct netlink_ext_ack *extack)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 struct tc_prio_qopt_offload graft_offload;
 unsigned long band = arg - 1;

 if (new == ((void*)0))
  new = &noop_qdisc;

 *old = qdisc_replace(sch, new, &q->queues[band]);

 graft_offload.handle = sch->handle;
 graft_offload.parent = sch->parent;
 graft_offload.graft_params.band = band;
 graft_offload.graft_params.child_handle = new->handle;
 graft_offload.command = TC_PRIO_GRAFT;

 qdisc_offload_graft_helper(qdisc_dev(sch), sch, new, *old,
       TC_SETUP_QDISC_PRIO, &graft_offload,
       extack);
 return 0;
}
