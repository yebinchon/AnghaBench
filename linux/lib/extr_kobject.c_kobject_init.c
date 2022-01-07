
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kobj_type* ktype; scalar_t__ state_initialized; } ;
struct kobj_type {int dummy; } ;


 int dump_stack () ;
 int kobject_init_internal (struct kobject*) ;
 int pr_err (char*,struct kobject*,...) ;

void kobject_init(struct kobject *kobj, struct kobj_type *ktype)
{
 char *err_str;

 if (!kobj) {
  err_str = "invalid kobject pointer!";
  goto error;
 }
 if (!ktype) {
  err_str = "must have a ktype to be initialized properly!\n";
  goto error;
 }
 if (kobj->state_initialized) {

  pr_err("kobject (%p): tried to init an initialized object, something is seriously wrong.\n",
         kobj);
  dump_stack();
 }

 kobject_init_internal(kobj);
 kobj->ktype = ktype;
 return;

error:
 pr_err("kobject (%p): %s\n", kobj, err_str);
 dump_stack();
}
