
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_head {int dummy; } ;


 int BLKH_SIZE ;
 int DC_SIZE ;
 int DISK_LEAF_NODE_LEVEL ;
 int KEY_SIZE ;
 int MAX_HEIGHT ;
 int blkh_free_space (struct block_head*) ;
 int blkh_level (struct block_head*) ;
 int blkh_nr_item (struct block_head*) ;
 int reiserfs_warning (int *,char*,char*,...) ;

__attribute__((used)) static int is_internal(char *buf, int blocksize, struct buffer_head *bh)
{
 struct block_head *blkh;
 int nr;
 int used_space;

 blkh = (struct block_head *)buf;
 nr = blkh_level(blkh);
 if (nr <= DISK_LEAF_NODE_LEVEL || nr > MAX_HEIGHT) {

  reiserfs_warning(((void*)0), "reiserfs-5087",
     "this should be caught earlier");
  return 0;
 }

 nr = blkh_nr_item(blkh);

 if (nr > (blocksize - BLKH_SIZE - DC_SIZE) / (KEY_SIZE + DC_SIZE)) {
  reiserfs_warning(((void*)0), "reiserfs-5088",
     "number of key seems wrong: %z", bh);
  return 0;
 }

 used_space = BLKH_SIZE + KEY_SIZE * nr + DC_SIZE * (nr + 1);
 if (used_space != blocksize - blkh_free_space(blkh)) {
  reiserfs_warning(((void*)0), "reiserfs-5089",
     "free space seems wrong: %z", bh);
  return 0;
 }


 return 1;
}
