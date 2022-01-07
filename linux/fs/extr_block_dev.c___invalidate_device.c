
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct block_device {int dummy; } ;


 int drop_super (struct super_block*) ;
 struct super_block* get_super (struct block_device*) ;
 int invalidate_bdev (struct block_device*) ;
 int invalidate_inodes (struct super_block*,int) ;
 int shrink_dcache_sb (struct super_block*) ;

int __invalidate_device(struct block_device *bdev, bool kill_dirty)
{
 struct super_block *sb = get_super(bdev);
 int res = 0;

 if (sb) {






  shrink_dcache_sb(sb);
  res = invalidate_inodes(sb, kill_dirty);
  drop_super(sb);
 }
 invalidate_bdev(bdev);
 return res;
}
