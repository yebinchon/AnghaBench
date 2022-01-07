
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_kobject {int kobj; } ;
struct module_attribute {int dummy; } ;
typedef int ssize_t ;


 int kobject_synth_uevent (int *,char const*,size_t) ;

__attribute__((used)) static ssize_t store_uevent(struct module_attribute *mattr,
       struct module_kobject *mk,
       const char *buffer, size_t count)
{
 int rc;

 rc = kobject_synth_uevent(&mk->kobj, buffer, count);
 return rc ? rc : count;
}
