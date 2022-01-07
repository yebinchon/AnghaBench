
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dev_cgroup {scalar_t__ behavior; int exceptions; } ;


 scalar_t__ DEVCG_DEFAULT_ALLOW ;
 int EPERM ;
 int current ;
 int match_exception (int *,short,int ,int ,short) ;
 int match_exception_partial (int *,short,int ,int ,short) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dev_cgroup* task_devcgroup (int ) ;

int __devcgroup_check_permission(short type, u32 major, u32 minor,
     short access)
{
 struct dev_cgroup *dev_cgroup;
 bool rc;

 rcu_read_lock();
 dev_cgroup = task_devcgroup(current);
 if (dev_cgroup->behavior == DEVCG_DEFAULT_ALLOW)

  rc = !match_exception_partial(&dev_cgroup->exceptions,
           type, major, minor, access);
 else

  rc = match_exception(&dev_cgroup->exceptions, type, major,
         minor, access);
 rcu_read_unlock();

 if (!rc)
  return -EPERM;

 return 0;
}
