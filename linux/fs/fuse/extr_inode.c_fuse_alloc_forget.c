
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_forget_link {int dummy; } ;


 int GFP_KERNEL_ACCOUNT ;
 struct fuse_forget_link* kzalloc (int,int ) ;

struct fuse_forget_link *fuse_alloc_forget(void)
{
 return kzalloc(sizeof(struct fuse_forget_link), GFP_KERNEL_ACCOUNT);
}
