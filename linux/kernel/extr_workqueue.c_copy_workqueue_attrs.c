
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_attrs {int no_numa; int cpumask; int nice; } ;


 int cpumask_copy (int ,int ) ;

__attribute__((used)) static void copy_workqueue_attrs(struct workqueue_attrs *to,
     const struct workqueue_attrs *from)
{
 to->nice = from->nice;
 cpumask_copy(to->cpumask, from->cpumask);





 to->no_numa = from->no_numa;
}
