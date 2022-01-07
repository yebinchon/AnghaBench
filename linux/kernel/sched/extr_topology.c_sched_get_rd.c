
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_domain {int refcount; } ;


 int atomic_inc (int *) ;

void sched_get_rd(struct root_domain *rd)
{
 atomic_inc(&rd->refcount);
}
