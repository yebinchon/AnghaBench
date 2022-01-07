
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parman {int prio_list; } ;


 int WARN_ON (int) ;
 int kfree (struct parman*) ;
 int list_empty (int *) ;

void parman_destroy(struct parman *parman)
{
 WARN_ON(!list_empty(&parman->prio_list));
 kfree(parman);
}
