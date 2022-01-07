
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EPERM ;
 int HIBERNATION_FIRST ;
 int HIBERNATION_INVALID ;
 int HIBERNATION_MAX ;





 int hibernation_available () ;
 int hibernation_mode ;
 int * hibernation_modes ;
 int hibernation_ops ;
 int lock_system_sleep () ;
 char* memchr (char const*,char,size_t) ;
 int pm_pr_dbg (char*,int ) ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int) ;
 int unlock_system_sleep () ;

__attribute__((used)) static ssize_t disk_store(struct kobject *kobj, struct kobj_attribute *attr,
     const char *buf, size_t n)
{
 int error = 0;
 int i;
 int len;
 char *p;
 int mode = HIBERNATION_INVALID;

 if (!hibernation_available())
  return -EPERM;

 p = memchr(buf, '\n', n);
 len = p ? p - buf : n;

 lock_system_sleep();
 for (i = HIBERNATION_FIRST; i <= HIBERNATION_MAX; i++) {
  if (len == strlen(hibernation_modes[i])
      && !strncmp(buf, hibernation_modes[i], len)) {
   mode = i;
   break;
  }
 }
 if (mode != HIBERNATION_INVALID) {
  switch (mode) {
  case 130:
  case 131:



  case 128:
   hibernation_mode = mode;
   break;
  case 132:
   if (hibernation_ops)
    hibernation_mode = mode;
   else
    error = -EINVAL;
  }
 } else
  error = -EINVAL;

 if (!error)
  pm_pr_dbg("Hibernation mode set to '%s'\n",
          hibernation_modes[mode]);
 unlock_system_sleep();
 return error ? error : n;
}
