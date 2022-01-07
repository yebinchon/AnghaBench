
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct choke_sched_data {int tab; } ;
struct Qdisc {int dummy; } ;


 int choke_free (int ) ;
 struct choke_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void choke_destroy(struct Qdisc *sch)
{
 struct choke_sched_data *q = qdisc_priv(sch);

 choke_free(q->tab);
}
