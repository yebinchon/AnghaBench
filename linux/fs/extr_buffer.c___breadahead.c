
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int REQ_OP_READ ;
 int REQ_RAHEAD ;
 struct buffer_head* __getblk (struct block_device*,int ,unsigned int) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ likely (struct buffer_head*) ;
 int ll_rw_block (int ,int ,int,struct buffer_head**) ;

void __breadahead(struct block_device *bdev, sector_t block, unsigned size)
{
 struct buffer_head *bh = __getblk(bdev, block, size);
 if (likely(bh)) {
  ll_rw_block(REQ_OP_READ, REQ_RAHEAD, 1, &bh);
  brelse(bh);
 }
}
