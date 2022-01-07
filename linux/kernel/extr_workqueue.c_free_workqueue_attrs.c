
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_attrs {int cpumask; } ;


 int free_cpumask_var (int ) ;
 int kfree (struct workqueue_attrs*) ;

void free_workqueue_attrs(struct workqueue_attrs *attrs)
{
 if (attrs) {
  free_cpumask_var(attrs->cpumask);
  kfree(attrs);
 }
}
