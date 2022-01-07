
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dio_submit {unsigned int cur_page_offset; int cur_page_len; scalar_t__ cur_page_block; int blkbits; int cur_page_fs_offset; int block_in_file; struct page* cur_page; scalar_t__ bio; scalar_t__ boundary; } ;
struct dio {scalar_t__ op; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ REQ_OP_WRITE ;
 int dio_bio_submit (struct dio*,struct dio_submit*) ;
 int dio_send_cur_page (struct dio*,struct dio_submit*,struct buffer_head*) ;
 int get_page (struct page*) ;
 int put_page (struct page*) ;
 int task_io_account_write (unsigned int) ;

__attribute__((used)) static inline int
submit_page_section(struct dio *dio, struct dio_submit *sdio, struct page *page,
      unsigned offset, unsigned len, sector_t blocknr,
      struct buffer_head *map_bh)
{
 int ret = 0;

 if (dio->op == REQ_OP_WRITE) {



  task_io_account_write(len);
 }




 if (sdio->cur_page == page &&
     sdio->cur_page_offset + sdio->cur_page_len == offset &&
     sdio->cur_page_block +
     (sdio->cur_page_len >> sdio->blkbits) == blocknr) {
  sdio->cur_page_len += len;
  goto out;
 }




 if (sdio->cur_page) {
  ret = dio_send_cur_page(dio, sdio, map_bh);
  put_page(sdio->cur_page);
  sdio->cur_page = ((void*)0);
  if (ret)
   return ret;
 }

 get_page(page);
 sdio->cur_page = page;
 sdio->cur_page_offset = offset;
 sdio->cur_page_len = len;
 sdio->cur_page_block = blocknr;
 sdio->cur_page_fs_offset = sdio->block_in_file << sdio->blkbits;
out:




 if (sdio->boundary) {
  ret = dio_send_cur_page(dio, sdio, map_bh);
  if (sdio->bio)
   dio_bio_submit(dio, sdio);
  put_page(sdio->cur_page);
  sdio->cur_page = ((void*)0);
 }
 return ret;
}
