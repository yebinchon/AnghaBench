
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lockdown_reason { ____Placeholder_lockdown_reason } lockdown_reason ;


 int EPERM ;
 int kernel_locked_down ;
 int pr_notice (char*,char const*) ;

__attribute__((used)) static int lock_kernel_down(const char *where, enum lockdown_reason level)
{
 if (kernel_locked_down >= level)
  return -EPERM;

 kernel_locked_down = level;
 pr_notice("Kernel is locked down from %s; see man kernel_lockdown.7\n",
    where);
 return 0;
}
