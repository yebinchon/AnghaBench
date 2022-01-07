
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_write_info {scalar_t__ nr_vecs; scalar_t__ end; scalar_t__ bio; scalar_t__ blocknr; int nilfs; } ;
struct nilfs_segment_buffer {int dummy; } ;
struct buffer_head {int b_size; int b_page; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int bh_offset (struct buffer_head*) ;
 int bio_add_page (scalar_t__,int ,int,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ nilfs_alloc_seg_bio (int ,scalar_t__,scalar_t__) ;
 int nilfs_segbuf_submit_bio (struct nilfs_segment_buffer*,struct nilfs_write_info*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_segbuf_submit_bh(struct nilfs_segment_buffer *segbuf,
      struct nilfs_write_info *wi,
      struct buffer_head *bh, int mode)
{
 int len, err;

 BUG_ON(wi->nr_vecs <= 0);
 repeat:
 if (!wi->bio) {
  wi->bio = nilfs_alloc_seg_bio(wi->nilfs, wi->blocknr + wi->end,
           wi->nr_vecs);
  if (unlikely(!wi->bio))
   return -ENOMEM;
 }

 len = bio_add_page(wi->bio, bh->b_page, bh->b_size, bh_offset(bh));
 if (len == bh->b_size) {
  wi->end++;
  return 0;
 }

 err = nilfs_segbuf_submit_bio(segbuf, wi, mode, 0);

 if (likely(!err))
  goto repeat;
 return err;
}
