
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 int nfs_lookup_revalidate_done (struct inode*,struct dentry*,int *,int) ;
 scalar_t__ nfs_neg_need_reval (struct inode*,struct dentry*,unsigned int) ;

__attribute__((used)) static int
nfs_lookup_revalidate_negative(struct inode *dir, struct dentry *dentry,
          unsigned int flags)
{
 int ret = 1;
 if (nfs_neg_need_reval(dir, dentry, flags)) {
  if (flags & LOOKUP_RCU)
   return -ECHILD;
  ret = 0;
 }
 return nfs_lookup_revalidate_done(dir, dentry, ((void*)0), ret);
}
