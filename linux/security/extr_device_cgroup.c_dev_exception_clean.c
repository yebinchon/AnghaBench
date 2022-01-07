
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_cgroup {int dummy; } ;


 int __dev_exception_clean (struct dev_cgroup*) ;
 int devcgroup_mutex ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void dev_exception_clean(struct dev_cgroup *dev_cgroup)
{
 lockdep_assert_held(&devcgroup_mutex);

 __dev_exception_clean(dev_cgroup);
}
