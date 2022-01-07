
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_clone_args {int flags; } ;


 int CLONE_PARENT_SETTID ;
 int CLONE_PIDFD ;

bool legacy_clone_args_valid(const struct kernel_clone_args *kargs)
{

 if ((kargs->flags & CLONE_PIDFD) &&
     (kargs->flags & CLONE_PARENT_SETTID))
  return 0;

 return 1;
}
