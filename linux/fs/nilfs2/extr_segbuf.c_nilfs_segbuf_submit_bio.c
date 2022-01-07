
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_write_info {struct bio* bio; scalar_t__ end; scalar_t__ start; int rest_blocks; int max_pages; int nr_vecs; } ;
struct nilfs_segment_buffer {scalar_t__ sb_nbio; int sb_err; int sb_bio_event; TYPE_1__* sb_super; } ;
struct bio {struct nilfs_segment_buffer* bi_private; int bi_end_io; } ;
struct TYPE_2__ {int s_bdi; } ;


 int EIO ;
 int atomic_read (int *) ;
 scalar_t__ bdi_write_congested (int ) ;
 int bio_put (struct bio*) ;
 int bio_set_op_attrs (struct bio*,int,int) ;
 int min (int ,int ) ;
 int nilfs_end_bio_write ;
 int submit_bio (struct bio*) ;
 scalar_t__ unlikely (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int nilfs_segbuf_submit_bio(struct nilfs_segment_buffer *segbuf,
       struct nilfs_write_info *wi, int mode,
       int mode_flags)
{
 struct bio *bio = wi->bio;
 int err;

 if (segbuf->sb_nbio > 0 &&
     bdi_write_congested(segbuf->sb_super->s_bdi)) {
  wait_for_completion(&segbuf->sb_bio_event);
  segbuf->sb_nbio--;
  if (unlikely(atomic_read(&segbuf->sb_err))) {
   bio_put(bio);
   err = -EIO;
   goto failed;
  }
 }

 bio->bi_end_io = nilfs_end_bio_write;
 bio->bi_private = segbuf;
 bio_set_op_attrs(bio, mode, mode_flags);
 submit_bio(bio);
 segbuf->sb_nbio++;

 wi->bio = ((void*)0);
 wi->rest_blocks -= wi->end - wi->start;
 wi->nr_vecs = min(wi->max_pages, wi->rest_blocks);
 wi->start = wi->end;
 return 0;

 failed:
 wi->bio = ((void*)0);
 return err;
}
