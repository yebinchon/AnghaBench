
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmsg {int tcm_info; int tcm_handle; } ;
struct sk_buff {int dummy; } ;
struct cbs_sched_data {TYPE_1__* qdisc; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int handle; } ;


 int ENOENT ;
 int TC_H_MIN (int) ;
 struct cbs_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int cbs_dump_class(struct Qdisc *sch, unsigned long cl,
     struct sk_buff *skb, struct tcmsg *tcm)
{
 struct cbs_sched_data *q = qdisc_priv(sch);

 if (cl != 1 || !q->qdisc)
  return -ENOENT;

 tcm->tcm_handle |= TC_H_MIN(1);
 tcm->tcm_info = q->qdisc->handle;

 return 0;
}
