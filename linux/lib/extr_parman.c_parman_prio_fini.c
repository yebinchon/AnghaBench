
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parman_prio {int list; } ;


 int WARN_ON (int ) ;
 int list_del (int *) ;
 int parman_prio_used (struct parman_prio*) ;

void parman_prio_fini(struct parman_prio *prio)
{
 WARN_ON(parman_prio_used(prio));
 list_del(&prio->list);
}
