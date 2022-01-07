
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {unsigned int blkbits; unsigned int blkfactor; int block_in_file; int final_block_in_request; int (* get_block ) (int ,int,struct buffer_head*,int) ;} ;
struct dio {int page_errors; scalar_t__ op; int flags; int private; int inode; } ;
struct buffer_head {unsigned long b_size; int b_private; scalar_t__ b_state; } ;
typedef int sector_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int DIO_SKIP_HOLES ;
 scalar_t__ REQ_OP_WRITE ;
 scalar_t__ buffer_defer_completion (struct buffer_head*) ;
 int dio_set_defer_completion (struct dio*) ;
 int i_size_read (int ) ;
 int stub1 (int ,int,struct buffer_head*,int) ;

__attribute__((used)) static int get_more_blocks(struct dio *dio, struct dio_submit *sdio,
      struct buffer_head *map_bh)
{
 int ret;
 sector_t fs_startblk;
 sector_t fs_endblk;
 unsigned long fs_count;
 int create;
 unsigned int i_blkbits = sdio->blkbits + sdio->blkfactor;
 loff_t i_size;





 ret = dio->page_errors;
 if (ret == 0) {
  BUG_ON(sdio->block_in_file >= sdio->final_block_in_request);
  fs_startblk = sdio->block_in_file >> sdio->blkfactor;
  fs_endblk = (sdio->final_block_in_request - 1) >>
     sdio->blkfactor;
  fs_count = fs_endblk - fs_startblk + 1;

  map_bh->b_state = 0;
  map_bh->b_size = fs_count << i_blkbits;
  create = dio->op == REQ_OP_WRITE;
  if (dio->flags & DIO_SKIP_HOLES) {
   i_size = i_size_read(dio->inode);
   if (i_size && fs_startblk <= (i_size - 1) >> i_blkbits)
    create = 0;
  }

  ret = (*sdio->get_block)(dio->inode, fs_startblk,
      map_bh, create);


  dio->private = map_bh->b_private;

  if (ret == 0 && buffer_defer_completion(map_bh))
   ret = dio_set_defer_completion(dio);
 }
 return ret;
}
