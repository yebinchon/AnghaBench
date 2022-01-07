
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;
typedef int gfp_t ;


 struct buffer_head* __bread_slow (struct buffer_head*) ;
 struct buffer_head* __getblk_gfp (struct block_device*,int ,unsigned int,int ) ;
 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ likely (struct buffer_head*) ;

struct buffer_head *
__bread_gfp(struct block_device *bdev, sector_t block,
     unsigned size, gfp_t gfp)
{
 struct buffer_head *bh = __getblk_gfp(bdev, block, size, gfp);

 if (likely(bh) && !buffer_uptodate(bh))
  bh = __bread_slow(bh);
 return bh;
}
