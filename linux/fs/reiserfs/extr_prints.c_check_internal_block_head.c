
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_size; } ;


 int BLKH_SIZE ;
 int B_FREE_SPACE (struct buffer_head*) ;
 scalar_t__ B_LEVEL (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 int DC_SIZE ;
 scalar_t__ DISK_LEAF_NODE_LEVEL ;
 int IH_SIZE ;
 int KEY_SIZE ;
 scalar_t__ MAX_HEIGHT ;
 int reiserfs_panic (int *,char*,char*,struct buffer_head*) ;

__attribute__((used)) static void check_internal_block_head(struct buffer_head *bh)
{
 if (!(B_LEVEL(bh) > DISK_LEAF_NODE_LEVEL && B_LEVEL(bh) <= MAX_HEIGHT))
  reiserfs_panic(((void*)0), "vs-6025", "invalid level %z", bh);

 if (B_NR_ITEMS(bh) > (bh->b_size - BLKH_SIZE) / IH_SIZE)
  reiserfs_panic(((void*)0), "vs-6030", "invalid item number %z", bh);

 if (B_FREE_SPACE(bh) !=
     bh->b_size - BLKH_SIZE - KEY_SIZE * B_NR_ITEMS(bh) -
     DC_SIZE * (B_NR_ITEMS(bh) + 1))
  reiserfs_panic(((void*)0), "vs-6040", "invalid free space %z", bh);

}
