
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kernfs_node* sd; } ;
struct kernfs_node {int dummy; } ;
struct attribute {int mode; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ENOENT ;
 struct kernfs_node* kernfs_find_and_get (struct kernfs_node*,char const*) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;
 int kobject_get_ownership (struct kobject*,int *,int *) ;
 int sysfs_add_file_mode_ns (struct kernfs_node*,struct attribute const*,int,int ,int ,int ,int *) ;

int sysfs_add_file_to_group(struct kobject *kobj,
  const struct attribute *attr, const char *group)
{
 struct kernfs_node *parent;
 kuid_t uid;
 kgid_t gid;
 int error;

 if (group) {
  parent = kernfs_find_and_get(kobj->sd, group);
 } else {
  parent = kobj->sd;
  kernfs_get(parent);
 }

 if (!parent)
  return -ENOENT;

 kobject_get_ownership(kobj, &uid, &gid);
 error = sysfs_add_file_mode_ns(parent, attr, 0,
           attr->mode, uid, gid, ((void*)0));
 kernfs_put(parent);

 return error;
}
