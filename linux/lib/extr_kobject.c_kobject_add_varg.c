
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct kobject {struct kobject* parent; } ;


 int kobject_add_internal (struct kobject*) ;
 int kobject_set_name_vargs (struct kobject*,char const*,int ) ;
 int pr_err (char*) ;

int kobject_add_varg(struct kobject *kobj,
        struct kobject *parent,
        const char *fmt, va_list vargs)
{
 int retval;

 retval = kobject_set_name_vargs(kobj, fmt, vargs);
 if (retval) {
  pr_err("kobject: can not set name properly!\n");
  return retval;
 }
 kobj->parent = parent;
 return kobject_add_internal(kobj);
}
