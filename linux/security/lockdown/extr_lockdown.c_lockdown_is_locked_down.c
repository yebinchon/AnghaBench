
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum lockdown_reason { ____Placeholder_lockdown_reason } lockdown_reason ;
struct TYPE_2__ {int comm; } ;


 int EPERM ;
 int LOCKDOWN_CONFIDENTIALITY_MAX ;
 scalar_t__ WARN (int,char*) ;
 TYPE_1__* current ;
 int kernel_locked_down ;
 scalar_t__* lockdown_reasons ;
 int pr_notice (char*,int ,scalar_t__) ;

__attribute__((used)) static int lockdown_is_locked_down(enum lockdown_reason what)
{
 if (WARN(what >= LOCKDOWN_CONFIDENTIALITY_MAX,
   "Invalid lockdown reason"))
  return -EPERM;

 if (kernel_locked_down >= what) {
  if (lockdown_reasons[what])
   pr_notice("Lockdown: %s: %s is restricted; see man kernel_lockdown.7\n",
      current->comm, lockdown_reasons[what]);
  return -EPERM;
 }

 return 0;
}
