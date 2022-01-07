
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; int d_fsdata; } ;


 int DCACHE_NFSFS_RENAMED ;
 int WARN_ON (int) ;
 int kfree (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void nfs_d_release(struct dentry *dentry)
{

 if (unlikely(dentry->d_fsdata)) {
  if (dentry->d_flags & DCACHE_NFSFS_RENAMED)
   WARN_ON(1);
  else
   kfree(dentry->d_fsdata);
 }
}
