
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_bio_wait_ctxt {int wc_error; } ;
struct bio {scalar_t__ bi_status; struct o2hb_bio_wait_ctxt* bi_private; } ;


 int ML_ERROR ;
 int bio_put (struct bio*) ;
 int blk_status_to_errno (scalar_t__) ;
 int mlog (int ,char*,scalar_t__) ;
 int o2hb_bio_wait_dec (struct o2hb_bio_wait_ctxt*,int) ;

__attribute__((used)) static void o2hb_bio_end_io(struct bio *bio)
{
 struct o2hb_bio_wait_ctxt *wc = bio->bi_private;

 if (bio->bi_status) {
  mlog(ML_ERROR, "IO Error %d\n", bio->bi_status);
  wc->wc_error = blk_status_to_errno(bio->bi_status);
 }

 o2hb_bio_wait_dec(wc, 1);
 bio_put(bio);
}
