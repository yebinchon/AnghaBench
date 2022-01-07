
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t suspend_state_t ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 size_t PM_SUSPEND_MAX ;
 size_t PM_SUSPEND_MIN ;
 scalar_t__ hibernation_available () ;
 char** pm_states ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t state_show(struct kobject *kobj, struct kobj_attribute *attr,
     char *buf)
{
 char *s = buf;
 if (hibernation_available())
  s += sprintf(s, "disk ");
 if (s != buf)

  *(s-1) = '\n';
 return (s - buf);
}
