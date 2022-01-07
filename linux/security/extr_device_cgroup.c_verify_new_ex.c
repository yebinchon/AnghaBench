
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_exception_item {int access; int minor; int major; int type; } ;
struct dev_cgroup {scalar_t__ behavior; int exceptions; } ;
typedef enum devcg_behavior { ____Placeholder_devcg_behavior } devcg_behavior ;


 scalar_t__ DEVCG_DEFAULT_ALLOW ;
 int RCU_LOCKDEP_WARN (int,char*) ;
 int devcgroup_mutex ;
 int lockdep_is_held (int *) ;
 int match_exception (int *,int ,int ,int ,int ) ;
 int match_exception_partial (int *,int ,int ,int ,int ) ;
 int rcu_read_lock_held () ;

__attribute__((used)) static bool verify_new_ex(struct dev_cgroup *dev_cgroup,
            struct dev_exception_item *refex,
            enum devcg_behavior behavior)
{
 bool match = 0;

 RCU_LOCKDEP_WARN(!rcu_read_lock_held() &&
    !lockdep_is_held(&devcgroup_mutex),
    "device_cgroup:verify_new_ex called without proper synchronization");

 if (dev_cgroup->behavior == DEVCG_DEFAULT_ALLOW) {
  if (behavior == DEVCG_DEFAULT_ALLOW) {




   return 1;
  } else {





   match = match_exception_partial(&dev_cgroup->exceptions,
       refex->type,
       refex->major,
       refex->minor,
       refex->access);

   if (match)
    return 0;
   return 1;
  }
 } else {






  match = match_exception(&dev_cgroup->exceptions, refex->type,
     refex->major, refex->minor,
     refex->access);

  if (match)

   return 1;
  else
   return 0;
 }
 return 0;
}
