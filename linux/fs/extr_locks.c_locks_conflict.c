
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_type; } ;


 scalar_t__ F_WRLCK ;

__attribute__((used)) static bool locks_conflict(struct file_lock *caller_fl,
      struct file_lock *sys_fl)
{
 if (sys_fl->fl_type == F_WRLCK)
  return 1;
 if (caller_fl->fl_type == F_WRLCK)
  return 1;
 return 0;
}
