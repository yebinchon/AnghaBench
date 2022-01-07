
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocksize; int ns_bdev; } ;
struct buffer_head {unsigned int b_size; scalar_t__ b_blocknr; } ;
typedef scalar_t__ sector_t ;


 unsigned int DIV_ROUND_UP (unsigned long,unsigned int) ;
 struct buffer_head* __bread (int ,scalar_t__,int ) ;
 int brelse (struct buffer_head*) ;

__attribute__((used)) static void nilfs_skip_summary_info(struct the_nilfs *nilfs,
        struct buffer_head **pbh,
        unsigned int *offset, unsigned int bytes,
        unsigned long count)
{
 unsigned int rest_item_in_current_block
  = ((*pbh)->b_size - *offset) / bytes;

 if (count <= rest_item_in_current_block) {
  *offset += bytes * count;
 } else {
  sector_t blocknr = (*pbh)->b_blocknr;
  unsigned int nitem_per_block = (*pbh)->b_size / bytes;
  unsigned int bcnt;

  count -= rest_item_in_current_block;
  bcnt = DIV_ROUND_UP(count, nitem_per_block);
  *offset = bytes * (count - (bcnt - 1) * nitem_per_block);

  brelse(*pbh);
  *pbh = __bread(nilfs->ns_bdev, blocknr + bcnt,
          nilfs->ns_blocksize);
 }
}
