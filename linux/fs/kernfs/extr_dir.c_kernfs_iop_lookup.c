
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernfs_node {int dummy; } ;
struct inode {int i_sb; struct kernfs_node* i_private; } ;
struct TYPE_3__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {void* ns; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int kernfs_active (struct kernfs_node*) ;
 struct kernfs_node* kernfs_find_ns (struct kernfs_node*,int ,void const*) ;
 struct inode* kernfs_get_inode (int ,struct kernfs_node*) ;
 TYPE_2__* kernfs_info (int ) ;
 int kernfs_mutex ;
 scalar_t__ kernfs_ns_enabled (struct kernfs_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct dentry *kernfs_iop_lookup(struct inode *dir,
     struct dentry *dentry,
     unsigned int flags)
{
 struct dentry *ret;
 struct kernfs_node *parent = dir->i_private;
 struct kernfs_node *kn;
 struct inode *inode;
 const void *ns = ((void*)0);

 mutex_lock(&kernfs_mutex);

 if (kernfs_ns_enabled(parent))
  ns = kernfs_info(dir->i_sb)->ns;

 kn = kernfs_find_ns(parent, dentry->d_name.name, ns);


 if (!kn || !kernfs_active(kn)) {
  ret = ((void*)0);
  goto out_unlock;
 }


 inode = kernfs_get_inode(dir->i_sb, kn);
 if (!inode) {
  ret = ERR_PTR(-ENOMEM);
  goto out_unlock;
 }


 ret = d_splice_alias(inode, dentry);
 out_unlock:
 mutex_unlock(&kernfs_mutex);
 return ret;
}
