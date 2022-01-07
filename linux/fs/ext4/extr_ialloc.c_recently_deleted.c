
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ext4_inode {int i_dtime; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int ext4_group_t ;
struct TYPE_2__ {int s_inodes_per_block; } ;


 int EXT4_INODE_SIZE (struct super_block*) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 scalar_t__ RECENTCY_DIRTY ;
 int RECENTCY_MIN ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,int ,int *) ;
 scalar_t__ ext4_inode_table (struct super_block*,struct ext4_group_desc*) ;
 scalar_t__ ktime_get_real_seconds () ;
 scalar_t__ le32_to_cpu (int ) ;
 struct buffer_head* sb_find_get_block (struct super_block*,scalar_t__) ;
 scalar_t__ time_before32 (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int recently_deleted(struct super_block *sb, ext4_group_t group, int ino)
{
 struct ext4_group_desc *gdp;
 struct ext4_inode *raw_inode;
 struct buffer_head *bh;
 int inodes_per_block = EXT4_SB(sb)->s_inodes_per_block;
 int offset, ret = 0;
 int recentcy = RECENTCY_MIN;
 u32 dtime, now;

 gdp = ext4_get_group_desc(sb, group, ((void*)0));
 if (unlikely(!gdp))
  return 0;

 bh = sb_find_get_block(sb, ext4_inode_table(sb, gdp) +
         (ino / inodes_per_block));
 if (!bh || !buffer_uptodate(bh))




  goto out;

 offset = (ino % inodes_per_block) * EXT4_INODE_SIZE(sb);
 raw_inode = (struct ext4_inode *) (bh->b_data + offset);





 dtime = le32_to_cpu(raw_inode->i_dtime);
 now = ktime_get_real_seconds();
 if (buffer_dirty(bh))
  recentcy += RECENTCY_DIRTY;

 if (dtime && time_before32(dtime, now) &&
     time_before32(now, dtime + recentcy))
  ret = 1;
out:
 brelse(bh);
 return ret;
}
