
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {char* name; int parent; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_MOVE ;
 int kfree (char const*) ;
 int kfree_const (char const*) ;
 char* kmalloc (scalar_t__,int ) ;
 struct kobject* kobject_get (struct kobject*) ;
 char* kobject_get_path (struct kobject*,int ) ;
 int kobject_namespace (struct kobject*) ;
 int kobject_put (struct kobject*) ;
 int kobject_uevent_env (struct kobject*,int ,char**) ;
 char* kstrdup_const (char const*,int ) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int sysfs_rename_dir_ns (struct kobject*,char const*,int ) ;

int kobject_rename(struct kobject *kobj, const char *new_name)
{
 int error = 0;
 const char *devpath = ((void*)0);
 const char *dup_name = ((void*)0), *name;
 char *devpath_string = ((void*)0);
 char *envp[2];

 kobj = kobject_get(kobj);
 if (!kobj)
  return -EINVAL;
 if (!kobj->parent) {
  kobject_put(kobj);
  return -EINVAL;
 }

 devpath = kobject_get_path(kobj, GFP_KERNEL);
 if (!devpath) {
  error = -ENOMEM;
  goto out;
 }
 devpath_string = kmalloc(strlen(devpath) + 15, GFP_KERNEL);
 if (!devpath_string) {
  error = -ENOMEM;
  goto out;
 }
 sprintf(devpath_string, "DEVPATH_OLD=%s", devpath);
 envp[0] = devpath_string;
 envp[1] = ((void*)0);

 name = dup_name = kstrdup_const(new_name, GFP_KERNEL);
 if (!name) {
  error = -ENOMEM;
  goto out;
 }

 error = sysfs_rename_dir_ns(kobj, new_name, kobject_namespace(kobj));
 if (error)
  goto out;


 dup_name = kobj->name;
 kobj->name = name;




 kobject_uevent_env(kobj, KOBJ_MOVE, envp);

out:
 kfree_const(dup_name);
 kfree(devpath_string);
 kfree(devpath);
 kobject_put(kobj);

 return error;
}
