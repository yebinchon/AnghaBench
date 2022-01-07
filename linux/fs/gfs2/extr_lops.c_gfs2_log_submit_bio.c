
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_log_in_flight; } ;
struct bio {int bi_opf; struct gfs2_sbd* bi_private; } ;


 int atomic_inc (int *) ;
 int submit_bio (struct bio*) ;

void gfs2_log_submit_bio(struct bio **biop, int opf)
{
 struct bio *bio = *biop;
 if (bio) {
  struct gfs2_sbd *sdp = bio->bi_private;
  atomic_inc(&sdp->sd_log_in_flight);
  bio->bi_opf = opf;
  submit_bio(bio);
  *biop = ((void*)0);
 }
}
