
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_ext_path {TYPE_1__* p_hdr; } ;
struct TYPE_2__ {int eh_max; int eh_entries; } ;


 int EXT4_META_TRANS_BLOCKS (int ) ;
 int ext4_chunk_trans_blocks (struct inode*,int) ;
 int ext_depth (struct inode*) ;
 scalar_t__ le16_to_cpu (int ) ;

int ext4_ext_calc_credits_for_single_extent(struct inode *inode, int nrblocks,
      struct ext4_ext_path *path)
{
 if (path) {
  int depth = ext_depth(inode);
  int ret = 0;


  if (le16_to_cpu(path[depth].p_hdr->eh_entries)
    < le16_to_cpu(path[depth].p_hdr->eh_max)) {
   ret = 2 + EXT4_META_TRANS_BLOCKS(inode->i_sb);
   return ret;
  }
 }

 return ext4_chunk_trans_blocks(inode, nrblocks);
}
