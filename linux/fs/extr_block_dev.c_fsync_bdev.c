
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct block_device {int dummy; } ;


 int drop_super (struct super_block*) ;
 struct super_block* get_super (struct block_device*) ;
 int sync_blockdev (struct block_device*) ;
 int sync_filesystem (struct super_block*) ;

int fsync_bdev(struct block_device *bdev)
{
 struct super_block *sb = get_super(bdev);
 if (sb) {
  int res = sync_filesystem(sb);
  drop_super(sb);
  return res;
 }
 return sync_blockdev(bdev);
}
