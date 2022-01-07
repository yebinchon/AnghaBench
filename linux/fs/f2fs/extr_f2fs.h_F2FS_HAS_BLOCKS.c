
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blocks; } ;
typedef int block_t ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_LOG_SECTORS_PER_BLOCK ;

__attribute__((used)) static inline int F2FS_HAS_BLOCKS(struct inode *inode)
{
 block_t xattr_block = F2FS_I(inode)->i_xattr_nid ? 1 : 0;

 return (inode->i_blocks >> F2FS_LOG_SECTORS_PER_BLOCK) > xattr_block;
}
