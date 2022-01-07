
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef struct super_block super_block ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int b_end_io; scalar_t__ b_blocknr; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ML_ERROR ;
 int OCFS2_BH_IGNORE_CACHE ;
 int OCFS2_BH_READAHEAD ;
 int REQ_OP_READ ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_jbd (struct buffer_head*) ;
 scalar_t__ buffer_needs_validate (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_needs_validate (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_buffer_read_ahead (struct ocfs2_caching_info*,struct buffer_head*) ;
 scalar_t__ ocfs2_buffer_uptodate (struct ocfs2_caching_info*,struct buffer_head*) ;
 struct super_block* ocfs2_metadata_cache_get_super (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_io_lock (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_io_unlock (struct ocfs2_caching_info*) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int ocfs2_set_buffer_uptodate (struct ocfs2_caching_info*,struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 int set_buffer_needs_validate (struct buffer_head*) ;
 int submit_bh (int ,int ,struct buffer_head*) ;
 int trace_ocfs2_read_blocks_begin (struct ocfs2_caching_info*,unsigned long long,int,int) ;
 int trace_ocfs2_read_blocks_bh (unsigned long long,int,int,scalar_t__) ;
 int trace_ocfs2_read_blocks_end (unsigned long long,int,int,int) ;
 int trace_ocfs2_read_blocks_from_disk (unsigned long long,unsigned long long) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int ocfs2_read_blocks(struct ocfs2_caching_info *ci, u64 block, int nr,
        struct buffer_head *bhs[], int flags,
        int (*validate)(struct super_block *sb,
          struct buffer_head *bh))
{
 int status = 0;
 int i, ignore_cache = 0;
 struct buffer_head *bh;
 struct super_block *sb = ocfs2_metadata_cache_get_super(ci);
 int new_bh = 0;

 trace_ocfs2_read_blocks_begin(ci, (unsigned long long)block, nr, flags);

 BUG_ON(!ci);
 BUG_ON((flags & OCFS2_BH_READAHEAD) &&
        (flags & OCFS2_BH_IGNORE_CACHE));

 if (bhs == ((void*)0)) {
  status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }

 if (nr < 0) {
  mlog(ML_ERROR, "asked to read %d blocks!\n", nr);
  status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }

 if (nr == 0) {
  status = 0;
  goto bail;
 }




 new_bh = (bhs[0] == ((void*)0));

 ocfs2_metadata_cache_io_lock(ci);
 for (i = 0 ; i < nr ; i++) {
  if (bhs[i] == ((void*)0)) {
   bhs[i] = sb_getblk(sb, block++);
   if (bhs[i] == ((void*)0)) {
    ocfs2_metadata_cache_io_unlock(ci);
    status = -ENOMEM;
    mlog_errno(status);

    break;
   }
  }
  bh = bhs[i];
  ignore_cache = (flags & OCFS2_BH_IGNORE_CACHE);
  if (!ignore_cache && !ocfs2_buffer_uptodate(ci, bh)) {
   trace_ocfs2_read_blocks_from_disk(
        (unsigned long long)bh->b_blocknr,
        (unsigned long long)ocfs2_metadata_cache_owner(ci));


   ignore_cache = 1;
  }

  trace_ocfs2_read_blocks_bh((unsigned long long)bh->b_blocknr,
   ignore_cache, buffer_jbd(bh), buffer_dirty(bh));

  if (buffer_jbd(bh)) {
   continue;
  }

  if (ignore_cache) {
   if (buffer_dirty(bh)) {


    continue;
   }





   if ((flags & OCFS2_BH_READAHEAD)
       && ocfs2_buffer_read_ahead(ci, bh))
    continue;

   lock_buffer(bh);
   if (buffer_jbd(bh)) {






    unlock_buffer(bh);
    continue;

   }





   if (!(flags & OCFS2_BH_IGNORE_CACHE)
       && !(flags & OCFS2_BH_READAHEAD)
       && ocfs2_buffer_uptodate(ci, bh)) {
    unlock_buffer(bh);
    continue;
   }

   get_bh(bh);
   if (validate)
    set_buffer_needs_validate(bh);
   bh->b_end_io = end_buffer_read_sync;
   submit_bh(REQ_OP_READ, 0, bh);
   continue;
  }
 }

read_failure:
 for (i = (nr - 1); i >= 0; i--) {
  bh = bhs[i];

  if (!(flags & OCFS2_BH_READAHEAD)) {
   if (unlikely(status)) {



    if (new_bh && bh) {




     if (!buffer_jbd(bh))
      wait_on_buffer(bh);
     put_bh(bh);
     bhs[i] = ((void*)0);
    } else if (bh && buffer_uptodate(bh)) {
     clear_buffer_uptodate(bh);
    }
    continue;
   }



   if (!buffer_jbd(bh))
    wait_on_buffer(bh);

   if (!buffer_uptodate(bh)) {






    status = -EIO;
    clear_buffer_needs_validate(bh);
    goto read_failure;
   }

   if (buffer_needs_validate(bh)) {



    BUG_ON(buffer_jbd(bh));
    clear_buffer_needs_validate(bh);
    status = validate(sb, bh);
    if (status)
     goto read_failure;
   }
  }




  ocfs2_set_buffer_uptodate(ci, bh);
 }
 ocfs2_metadata_cache_io_unlock(ci);

 trace_ocfs2_read_blocks_end((unsigned long long)block, nr,
        flags, ignore_cache);

bail:

 return status;
}
