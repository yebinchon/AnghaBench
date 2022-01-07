
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fuse_dentry {int dummy; } fuse_dentry ;
struct dentry {union fuse_dentry* d_fsdata; } ;


 int kfree_rcu (union fuse_dentry*,int ) ;
 int rcu ;

__attribute__((used)) static void fuse_dentry_release(struct dentry *dentry)
{
 union fuse_dentry *fd = dentry->d_fsdata;

 kfree_rcu(fd, rcu);
}
