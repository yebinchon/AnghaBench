
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct teql_sched_data {int q; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 struct teql_sched_data* qdisc_priv (struct Qdisc*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void
teql_reset(struct Qdisc *sch)
{
 struct teql_sched_data *dat = qdisc_priv(sch);

 skb_queue_purge(&dat->q);
 sch->q.qlen = 0;
}
