
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_time; } ;
struct TYPE_3__ {int flags; } ;


 scalar_t__ IS_ROOT (struct dentry*) ;
 int NFS_MOUNT_LOOKUP_CACHE_NONE ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 scalar_t__ __nfs_revalidate_inode (TYPE_1__*,struct inode*) ;
 scalar_t__ nfs_mapping_need_revalidate_inode (struct inode*) ;
 int nfs_verify_change_attribute (struct inode*,int ) ;

__attribute__((used)) static int nfs_check_verifier(struct inode *dir, struct dentry *dentry,
         int rcu_walk)
{
 if (IS_ROOT(dentry))
  return 1;
 if (NFS_SERVER(dir)->flags & NFS_MOUNT_LOOKUP_CACHE_NONE)
  return 0;
 if (!nfs_verify_change_attribute(dir, dentry->d_time))
  return 0;

 if (nfs_mapping_need_revalidate_inode(dir)) {
  if (rcu_walk)
   return 0;
  if (__nfs_revalidate_inode(NFS_SERVER(dir), dir) < 0)
   return 0;
 }
 if (!nfs_verify_change_attribute(dir, dentry->d_time))
  return 0;
 return 1;
}
