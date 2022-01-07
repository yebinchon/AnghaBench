
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netem_sched_data {struct Qdisc* qdisc; } ;
struct Qdisc {int dummy; } ;


 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct Qdisc *netem_leaf(struct Qdisc *sch, unsigned long arg)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 return q->qdisc;
}
