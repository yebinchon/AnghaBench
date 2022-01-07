
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_sched {int dummy; } ;
struct htb_class {scalar_t__ prio_activity; } ;


 int WARN_ON (int) ;
 int htb_deactivate_prios (struct htb_sched*,struct htb_class*) ;

__attribute__((used)) static inline void htb_deactivate(struct htb_sched *q, struct htb_class *cl)
{
 WARN_ON(!cl->prio_activity);

 htb_deactivate_prios(q, cl);
 cl->prio_activity = 0;
}
