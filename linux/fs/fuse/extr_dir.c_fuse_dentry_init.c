
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fuse_dentry {int dummy; } fuse_dentry ;
struct dentry {scalar_t__ d_fsdata; } ;


 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int __GFP_RECLAIMABLE ;
 scalar_t__ kzalloc (int,int) ;

__attribute__((used)) static int fuse_dentry_init(struct dentry *dentry)
{
 dentry->d_fsdata = kzalloc(sizeof(union fuse_dentry),
       GFP_KERNEL_ACCOUNT | __GFP_RECLAIMABLE);

 return dentry->d_fsdata ? 0 : -ENOMEM;
}
