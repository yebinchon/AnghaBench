
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_type {struct attribute** default_attrs; } ;
struct attribute {int dummy; } ;


 struct kobj_type* get_ktype (struct kobject*) ;
 int sysfs_create_file (struct kobject*,struct attribute*) ;

__attribute__((used)) static int populate_dir(struct kobject *kobj)
{
 struct kobj_type *t = get_ktype(kobj);
 struct attribute *attr;
 int error = 0;
 int i;

 if (t && t->default_attrs) {
  for (i = 0; (attr = t->default_attrs[i]) != ((void*)0); i++) {
   error = sysfs_create_file(kobj, attr);
   if (error)
    break;
  }
 }
 return error;
}
