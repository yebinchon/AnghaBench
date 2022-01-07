
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; int name; } ;
struct kernfs_node {int dummy; } ;
struct attribute_group {scalar_t__ name; int bin_attrs; int attrs; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 int S_IRUGO ;
 int S_IRWXU ;
 int S_IXUGO ;
 int WARN (int,char*,int ,char*) ;
 scalar_t__ WARN_ON (int) ;
 int create_files (struct kernfs_node*,struct kobject*,int ,int ,struct attribute_group const*,int) ;
 struct kernfs_node* kernfs_create_dir_ns (struct kernfs_node*,scalar_t__,int,int ,int ,struct kobject*,int *) ;
 struct kernfs_node* kernfs_find_and_get (struct kernfs_node*,scalar_t__) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_remove (struct kernfs_node*) ;
 int kobject_get_ownership (struct kobject*,int *,int *) ;
 int pr_warn (char*,int ,scalar_t__) ;
 int sysfs_warn_dup (struct kernfs_node*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int internal_create_group(struct kobject *kobj, int update,
     const struct attribute_group *grp)
{
 struct kernfs_node *kn;
 kuid_t uid;
 kgid_t gid;
 int error;

 if (WARN_ON(!kobj || (!update && !kobj->sd)))
  return -EINVAL;


 if (unlikely(update && !kobj->sd))
  return -EINVAL;
 if (!grp->attrs && !grp->bin_attrs) {
  WARN(1, "sysfs: (bin_)attrs not set by subsystem for group: %s/%s\n",
   kobj->name, grp->name ?: "");
  return -EINVAL;
 }
 kobject_get_ownership(kobj, &uid, &gid);
 if (grp->name) {
  if (update) {
   kn = kernfs_find_and_get(kobj->sd, grp->name);
   if (!kn) {
    pr_warn("Can't update unknown attr grp name: %s/%s\n",
     kobj->name, grp->name);
    return -EINVAL;
   }
  } else {
   kn = kernfs_create_dir_ns(kobj->sd, grp->name,
        S_IRWXU | S_IRUGO | S_IXUGO,
        uid, gid, kobj, ((void*)0));
   if (IS_ERR(kn)) {
    if (PTR_ERR(kn) == -EEXIST)
     sysfs_warn_dup(kobj->sd, grp->name);
    return PTR_ERR(kn);
   }
  }
 } else
  kn = kobj->sd;
 kernfs_get(kn);
 error = create_files(kn, kobj, uid, gid, grp, update);
 if (error) {
  if (grp->name)
   kernfs_remove(kn);
 }
 kernfs_put(kn);

 if (grp->name && update)
  kernfs_put(kn);

 return error;
}
