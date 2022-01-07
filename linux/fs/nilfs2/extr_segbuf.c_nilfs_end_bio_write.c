
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_buffer {int sb_bio_event; int sb_err; } ;
struct bio {scalar_t__ bi_status; struct nilfs_segment_buffer* bi_private; } ;


 int atomic_inc (int *) ;
 int bio_put (struct bio*) ;
 int complete (int *) ;

__attribute__((used)) static void nilfs_end_bio_write(struct bio *bio)
{
 struct nilfs_segment_buffer *segbuf = bio->bi_private;

 if (bio->bi_status)
  atomic_inc(&segbuf->sb_err);

 bio_put(bio);
 complete(&segbuf->sb_bio_event);
}
