
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_blocks; scalar_t__ i_blkbits; } ;
typedef scalar_t__ s64 ;


 scalar_t__ GFS2_BASIC_BLOCK_SHIFT ;
 int GFS2_SB (struct inode*) ;
 int gfs2_assert (int ,int) ;

__attribute__((used)) static inline void gfs2_add_inode_blocks(struct inode *inode, s64 change)
{
 change <<= inode->i_blkbits - GFS2_BASIC_BLOCK_SHIFT;
 gfs2_assert(GFS2_SB(inode), (change >= 0 || inode->i_blocks >= -change));
 inode->i_blocks += change;
}
