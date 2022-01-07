
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {struct kernfs_node* sd; } ;
struct TYPE_4__ {TYPE_1__* target_kn; } ;
struct kernfs_node {void* ns; TYPE_2__ symlink; } ;
struct TYPE_3__ {struct kobject* priv; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ KERNFS_LINK ;
 struct kernfs_node* kernfs_find_and_get_ns (struct kernfs_node*,char const*,void const*) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_rename_ns (struct kernfs_node*,struct kernfs_node*,char const*,void const*) ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 struct kernfs_node* sysfs_root_kn ;

int sysfs_rename_link_ns(struct kobject *kobj, struct kobject *targ,
    const char *old, const char *new, const void *new_ns)
{
 struct kernfs_node *parent, *kn = ((void*)0);
 const void *old_ns = ((void*)0);
 int result;

 if (!kobj)
  parent = sysfs_root_kn;
 else
  parent = kobj->sd;

 if (targ->sd)
  old_ns = targ->sd->ns;

 result = -ENOENT;
 kn = kernfs_find_and_get_ns(parent, old, old_ns);
 if (!kn)
  goto out;

 result = -EINVAL;
 if (kernfs_type(kn) != KERNFS_LINK)
  goto out;
 if (kn->symlink.target_kn->priv != targ)
  goto out;

 result = kernfs_rename_ns(kn, parent, new, new_ns);

out:
 kernfs_put(kn);
 return result;
}
