
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int p_depth; TYPE_1__* p_bh; struct ext4_extent* p_ext; } ;
typedef scalar_t__ ext4_lblk_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {scalar_t__ b_blocknr; } ;


 scalar_t__ ext4_ext_pblock (struct ext4_extent*) ;
 scalar_t__ ext4_inode_to_goal_block (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static ext4_fsblk_t ext4_ext_find_goal(struct inode *inode,
         struct ext4_ext_path *path,
         ext4_lblk_t block)
{
 if (path) {
  int depth = path->p_depth;
  struct ext4_extent *ex;
  ex = path[depth].p_ext;
  if (ex) {
   ext4_fsblk_t ext_pblk = ext4_ext_pblock(ex);
   ext4_lblk_t ext_block = le32_to_cpu(ex->ee_block);

   if (block > ext_block)
    return ext_pblk + (block - ext_block);
   else
    return ext_pblk - (ext_block - block);
  }



  if (path[depth].p_bh)
   return path[depth].p_bh->b_blocknr;
 }


 return ext4_inode_to_goal_block(inode);
}
