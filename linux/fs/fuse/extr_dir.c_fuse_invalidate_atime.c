
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int IS_RDONLY (struct inode*) ;
 int STATX_ATIME ;
 int fuse_invalidate_attr_mask (struct inode*,int ) ;

void fuse_invalidate_atime(struct inode *inode)
{
 if (!IS_RDONLY(inode))
  fuse_invalidate_attr_mask(inode, STATX_ATIME);
}
