
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int inval_mask; } ;


 TYPE_1__* get_fuse_inode (struct inode*) ;
 int set_mask_bits (int *,int ,int ) ;

__attribute__((used)) static void fuse_invalidate_attr_mask(struct inode *inode, u32 mask)
{
 set_mask_bits(&get_fuse_inode(inode)->inval_mask, 0, mask);
}
