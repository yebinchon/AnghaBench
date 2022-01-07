
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {struct kernfs_node* sd; TYPE_1__* parent; } ;
struct kernfs_node {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_2__ {struct kernfs_node* sd; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 int S_IRUGO ;
 int S_IRWXU ;
 int S_IXUGO ;
 scalar_t__ WARN_ON (int) ;
 struct kernfs_node* kernfs_create_dir_ns (struct kernfs_node*,int ,int,int ,int ,struct kobject*,void const*) ;
 int kobject_get_ownership (struct kobject*,int *,int *) ;
 int kobject_name (struct kobject*) ;
 struct kernfs_node* sysfs_root_kn ;
 int sysfs_warn_dup (struct kernfs_node*,int ) ;

int sysfs_create_dir_ns(struct kobject *kobj, const void *ns)
{
 struct kernfs_node *parent, *kn;
 kuid_t uid;
 kgid_t gid;

 if (WARN_ON(!kobj))
  return -EINVAL;

 if (kobj->parent)
  parent = kobj->parent->sd;
 else
  parent = sysfs_root_kn;

 if (!parent)
  return -ENOENT;

 kobject_get_ownership(kobj, &uid, &gid);

 kn = kernfs_create_dir_ns(parent, kobject_name(kobj),
      S_IRWXU | S_IRUGO | S_IXUGO, uid, gid,
      kobj, ns);
 if (IS_ERR(kn)) {
  if (PTR_ERR(kn) == -EEXIST)
   sysfs_warn_dup(parent, kobject_name(kobj));
  return PTR_ERR(kn);
 }

 kobj->sd = kn;
 return 0;
}
