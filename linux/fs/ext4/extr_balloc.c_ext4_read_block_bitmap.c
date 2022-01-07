
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int ext4_group_t ;


 struct buffer_head* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 struct buffer_head* ext4_read_block_bitmap_nowait (struct super_block*,int ) ;
 int ext4_wait_block_bitmap (struct super_block*,int ,struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;

struct buffer_head *
ext4_read_block_bitmap(struct super_block *sb, ext4_group_t block_group)
{
 struct buffer_head *bh;
 int err;

 bh = ext4_read_block_bitmap_nowait(sb, block_group);
 if (IS_ERR(bh))
  return bh;
 err = ext4_wait_block_bitmap(sb, block_group, bh);
 if (err) {
  put_bh(bh);
  return ERR_PTR(err);
 }
 return bh;
}
