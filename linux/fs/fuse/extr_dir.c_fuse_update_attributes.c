
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int STATX_ATIME ;
 int STATX_BASIC_STATS ;
 int fuse_update_get_attr (struct inode*,struct file*,int *,int,int ) ;

int fuse_update_attributes(struct inode *inode, struct file *file)
{

 return fuse_update_get_attr(inode, file, ((void*)0),
        STATX_BASIC_STATS & ~STATX_ATIME, 0);
}
