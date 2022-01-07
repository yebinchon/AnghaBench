
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_super {int sb; } ;
struct buffer_head {int b_end_io; scalar_t__ b_blocknr; } ;


 int BUG () ;
 int EIO ;
 int ENOMEM ;
 int ML_ERROR ;
 int REQ_OP_READ ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_jbd (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_errno (int) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk (int ,int ) ;
 int submit_bh (int ,int ,struct buffer_head*) ;
 int trace_ocfs2_read_blocks_sync (unsigned long long,unsigned int) ;
 int trace_ocfs2_read_blocks_sync_jbd (unsigned long long) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int ocfs2_read_blocks_sync(struct ocfs2_super *osb, u64 block,
      unsigned int nr, struct buffer_head *bhs[])
{
 int status = 0;
 unsigned int i;
 struct buffer_head *bh;
 int new_bh = 0;

 trace_ocfs2_read_blocks_sync((unsigned long long)block, nr);

 if (!nr)
  goto bail;




 new_bh = (bhs[0] == ((void*)0));

 for (i = 0 ; i < nr ; i++) {
  if (bhs[i] == ((void*)0)) {
   bhs[i] = sb_getblk(osb->sb, block++);
   if (bhs[i] == ((void*)0)) {
    status = -ENOMEM;
    mlog_errno(status);
    break;
   }
  }
  bh = bhs[i];

  if (buffer_jbd(bh)) {
   trace_ocfs2_read_blocks_sync_jbd(
     (unsigned long long)bh->b_blocknr);
   continue;
  }

  if (buffer_dirty(bh)) {


   mlog(ML_ERROR,
        "trying to sync read a dirty "
        "buffer! (blocknr = %llu), skipping\n",
        (unsigned long long)bh->b_blocknr);
   continue;
  }

  lock_buffer(bh);
  if (buffer_jbd(bh)) {







   unlock_buffer(bh);
   continue;

  }

  get_bh(bh);
  bh->b_end_io = end_buffer_read_sync;
  submit_bh(REQ_OP_READ, 0, bh);
 }

read_failure:
 for (i = nr; i > 0; i--) {
  bh = bhs[i - 1];

  if (unlikely(status)) {
   if (new_bh && bh) {




    if (!buffer_jbd(bh))
     wait_on_buffer(bh);
    put_bh(bh);
    bhs[i - 1] = ((void*)0);
   } else if (bh && buffer_uptodate(bh)) {
    clear_buffer_uptodate(bh);
   }
   continue;
  }


  if (!buffer_jbd(bh))
   wait_on_buffer(bh);

  if (!buffer_uptodate(bh)) {



   status = -EIO;
   goto read_failure;
  }
 }

bail:
 return status;
}
