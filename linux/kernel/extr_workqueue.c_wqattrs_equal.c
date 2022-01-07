
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_attrs {scalar_t__ nice; int cpumask; } ;


 int cpumask_equal (int ,int ) ;

__attribute__((used)) static bool wqattrs_equal(const struct workqueue_attrs *a,
     const struct workqueue_attrs *b)
{
 if (a->nice != b->nice)
  return 0;
 if (!cpumask_equal(a->cpumask, b->cpumask))
  return 0;
 return 1;
}
