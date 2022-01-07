
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int STATX_BASIC_STATS ;
 int fuse_invalidate_attr_mask (struct inode*,int ) ;

void fuse_invalidate_attr(struct inode *inode)
{
 fuse_invalidate_attr_mask(inode, STATX_BASIC_STATS);
}
