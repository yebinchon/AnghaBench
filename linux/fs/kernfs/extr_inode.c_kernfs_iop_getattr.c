
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct inode {struct kernfs_node* i_private; } ;


 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int kernfs_mutex ;
 int kernfs_refresh_inode (struct kernfs_node*,struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kernfs_iop_getattr(const struct path *path, struct kstat *stat,
         u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct kernfs_node *kn = inode->i_private;

 mutex_lock(&kernfs_mutex);
 kernfs_refresh_inode(kn, inode);
 mutex_unlock(&kernfs_mutex);

 generic_fillattr(inode, stat);
 return 0;
}
