
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct omfs_sb_info {scalar_t__ s_num_blocks; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;


 struct omfs_sb_info* OMFS_SB (struct super_block*) ;
 int clus_to_blk (struct omfs_sb_info*,scalar_t__) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;

struct buffer_head *omfs_bread(struct super_block *sb, sector_t block)
{
 struct omfs_sb_info *sbi = OMFS_SB(sb);
 if (block >= sbi->s_num_blocks)
  return ((void*)0);

 return sb_bread(sb, clus_to_blk(sbi, block));
}
