
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_attrs {int cpumask; } ;


 int GFP_KERNEL ;
 int alloc_cpumask_var (int *,int ) ;
 int cpu_possible_mask ;
 int cpumask_copy (int ,int ) ;
 int free_workqueue_attrs (struct workqueue_attrs*) ;
 struct workqueue_attrs* kzalloc (int,int ) ;

struct workqueue_attrs *alloc_workqueue_attrs(void)
{
 struct workqueue_attrs *attrs;

 attrs = kzalloc(sizeof(*attrs), GFP_KERNEL);
 if (!attrs)
  goto fail;
 if (!alloc_cpumask_var(&attrs->cpumask, GFP_KERNEL))
  goto fail;

 cpumask_copy(attrs->cpumask, cpu_possible_mask);
 return attrs;
fail:
 free_workqueue_attrs(attrs);
 return ((void*)0);
}
