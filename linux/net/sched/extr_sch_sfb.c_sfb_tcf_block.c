
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;
struct sfb_sched_data {struct tcf_block* block; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;


 struct sfb_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_block *sfb_tcf_block(struct Qdisc *sch, unsigned long cl,
           struct netlink_ext_ack *extack)
{
 struct sfb_sched_data *q = qdisc_priv(sch);

 if (cl)
  return ((void*)0);
 return q->block;
}
