
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int system_wide; int per_thread; int * cpu_list; int * uid_str; scalar_t__ tid; scalar_t__ pid; } ;
typedef enum target_errno { ____Placeholder_target_errno } target_errno ;


 int TARGET_ERRNO__PID_OVERRIDE_CPU ;
 int TARGET_ERRNO__PID_OVERRIDE_SYSTEM ;
 int TARGET_ERRNO__PID_OVERRIDE_UID ;
 int TARGET_ERRNO__SUCCESS ;
 int TARGET_ERRNO__SYSTEM_OVERRIDE_THREAD ;
 int TARGET_ERRNO__UID_OVERRIDE_CPU ;
 int TARGET_ERRNO__UID_OVERRIDE_SYSTEM ;

enum target_errno target__validate(struct target *target)
{
 enum target_errno ret = TARGET_ERRNO__SUCCESS;

 if (target->pid)
  target->tid = target->pid;


 if (target->tid && target->cpu_list) {
  target->cpu_list = ((void*)0);
  if (ret == TARGET_ERRNO__SUCCESS)
   ret = TARGET_ERRNO__PID_OVERRIDE_CPU;
 }


 if (target->tid && target->uid_str) {
  target->uid_str = ((void*)0);
  if (ret == TARGET_ERRNO__SUCCESS)
   ret = TARGET_ERRNO__PID_OVERRIDE_UID;
 }


 if (target->uid_str && target->cpu_list) {
  target->cpu_list = ((void*)0);
  if (ret == TARGET_ERRNO__SUCCESS)
   ret = TARGET_ERRNO__UID_OVERRIDE_CPU;
 }


 if (target->tid && target->system_wide) {
  target->system_wide = 0;
  if (ret == TARGET_ERRNO__SUCCESS)
   ret = TARGET_ERRNO__PID_OVERRIDE_SYSTEM;
 }


 if (target->uid_str && target->system_wide) {
  target->system_wide = 0;
  if (ret == TARGET_ERRNO__SUCCESS)
   ret = TARGET_ERRNO__UID_OVERRIDE_SYSTEM;
 }


 if (target->per_thread && (target->system_wide || target->cpu_list)) {
  target->per_thread = 0;
  if (ret == TARGET_ERRNO__SUCCESS)
   ret = TARGET_ERRNO__SYSTEM_OVERRIDE_THREAD;
 }

 return ret;
}
