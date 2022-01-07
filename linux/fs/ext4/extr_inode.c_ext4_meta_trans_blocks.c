
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
typedef int ext4_group_t ;
struct TYPE_2__ {int s_gdb_count; } ;


 scalar_t__ EXT4_META_TRANS_BLOCKS (int ) ;
 TYPE_1__* EXT4_SB (int ) ;
 int ext4_get_groups_count (int ) ;
 int ext4_index_trans_blocks (struct inode*,int,int) ;

__attribute__((used)) static int ext4_meta_trans_blocks(struct inode *inode, int lblocks,
      int pextents)
{
 ext4_group_t groups, ngroups = ext4_get_groups_count(inode->i_sb);
 int gdpblocks;
 int idxblocks;
 int ret = 0;





 idxblocks = ext4_index_trans_blocks(inode, lblocks, pextents);

 ret = idxblocks;





 groups = idxblocks + pextents;
 gdpblocks = groups;
 if (groups > ngroups)
  groups = ngroups;
 if (groups > EXT4_SB(inode->i_sb)->s_gdb_count)
  gdpblocks = EXT4_SB(inode->i_sb)->s_gdb_count;


 ret += groups + gdpblocks;


 ret += EXT4_META_TRANS_BLOCKS(inode->i_sb);

 return ret;
}
