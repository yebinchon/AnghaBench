
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int flags; } ;
struct pkg_data {int dummy; } ;
struct core_data {int dummy; } ;


 int CPU_IS_FIRST_CORE_IN_PACKAGE ;
 int CPU_IS_FIRST_THREAD_IN_CORE ;
 int delta_core (struct core_data*,struct core_data*) ;
 int delta_package (struct pkg_data*,struct pkg_data*) ;
 int delta_thread (struct thread_data*,struct thread_data*,struct core_data*) ;

int delta_cpu(struct thread_data *t, struct core_data *c,
 struct pkg_data *p, struct thread_data *t2,
 struct core_data *c2, struct pkg_data *p2)
{
 int retval = 0;


 if (t->flags & CPU_IS_FIRST_THREAD_IN_CORE)
  delta_core(c, c2);


 retval = delta_thread(t, t2, c2);
 if (retval)
  return retval;


 if (t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE)
  retval = delta_package(p, p2);

 return retval;
}
