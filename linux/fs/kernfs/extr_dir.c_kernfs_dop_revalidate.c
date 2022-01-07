
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernfs_node {scalar_t__ ns; struct kernfs_node* parent; int name; } ;
struct TYPE_3__ {int name; } ;
struct dentry {int d_sb; TYPE_1__ d_name; struct dentry* d_parent; } ;
struct TYPE_4__ {scalar_t__ ns; } ;


 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 int kernfs_active (struct kernfs_node*) ;
 struct kernfs_node* kernfs_dentry_node (struct dentry*) ;
 TYPE_2__* kernfs_info (int ) ;
 int kernfs_mutex ;
 scalar_t__ kernfs_ns_enabled (struct kernfs_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int kernfs_dop_revalidate(struct dentry *dentry, unsigned int flags)
{
 struct kernfs_node *kn;

 if (flags & LOOKUP_RCU)
  return -ECHILD;


 if (d_really_is_negative(dentry))
  goto out_bad_unlocked;

 kn = kernfs_dentry_node(dentry);
 mutex_lock(&kernfs_mutex);


 if (!kernfs_active(kn))
  goto out_bad;


 if (kernfs_dentry_node(dentry->d_parent) != kn->parent)
  goto out_bad;


 if (strcmp(dentry->d_name.name, kn->name) != 0)
  goto out_bad;


 if (kn->parent && kernfs_ns_enabled(kn->parent) &&
     kernfs_info(dentry->d_sb)->ns != kn->ns)
  goto out_bad;

 mutex_unlock(&kernfs_mutex);
 return 1;
out_bad:
 mutex_unlock(&kernfs_mutex);
out_bad_unlocked:
 return 0;
}
