
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 unsigned int LOOKUP_CREATE ;
 unsigned int LOOKUP_RCU ;
 unsigned int LOOKUP_RENAME_TARGET ;
 int NFS_MOUNT_LOOKUP_CACHE_NONEG ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 int nfs_check_verifier (struct inode*,struct dentry*,unsigned int) ;

__attribute__((used)) static inline
int nfs_neg_need_reval(struct inode *dir, struct dentry *dentry,
         unsigned int flags)
{
 if (flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
  return 0;
 if (NFS_SERVER(dir)->flags & NFS_MOUNT_LOOKUP_CACHE_NONEG)
  return 1;
 return !nfs_check_verifier(dir, dentry, flags & LOOKUP_RCU);
}
