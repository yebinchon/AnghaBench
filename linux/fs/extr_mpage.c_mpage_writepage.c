
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int dummy; } ;
struct mpage_data {int * bio; int use_writepage; int get_block; int last_block_in_bio; } ;
typedef int get_block_t ;


 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 scalar_t__ WB_SYNC_ALL ;
 int __mpage_writepage (struct page*,struct writeback_control*,struct mpage_data*) ;
 int mpage_bio_submit (int ,int,int *) ;

int mpage_writepage(struct page *page, get_block_t get_block,
 struct writeback_control *wbc)
{
 struct mpage_data mpd = {
  .bio = ((void*)0),
  .last_block_in_bio = 0,
  .get_block = get_block,
  .use_writepage = 0,
 };
 int ret = __mpage_writepage(page, wbc, &mpd);
 if (mpd.bio) {
  int op_flags = (wbc->sync_mode == WB_SYNC_ALL ?
     REQ_SYNC : 0);
  mpage_bio_submit(REQ_OP_WRITE, op_flags, mpd.bio);
 }
 return ret;
}
