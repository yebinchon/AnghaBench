
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct gfs2_sbd {int sd_log_bio; } ;
struct bio {int dummy; } ;


 int REQ_OP_WRITE ;
 int WARN_ON (int) ;
 int bio_add_page (struct bio*,struct page*,unsigned int,unsigned int) ;
 int gfs2_end_log_write ;
 struct bio* gfs2_log_get_bio (struct gfs2_sbd*,int ,int *,int ,int ,int) ;

void gfs2_log_write(struct gfs2_sbd *sdp, struct page *page,
      unsigned size, unsigned offset, u64 blkno)
{
 struct bio *bio;
 int ret;

 bio = gfs2_log_get_bio(sdp, blkno, &sdp->sd_log_bio, REQ_OP_WRITE,
          gfs2_end_log_write, 0);
 ret = bio_add_page(bio, page, size, offset);
 if (ret == 0) {
  bio = gfs2_log_get_bio(sdp, blkno, &sdp->sd_log_bio,
           REQ_OP_WRITE, gfs2_end_log_write, 1);
  ret = bio_add_page(bio, page, size, offset);
  WARN_ON(ret == 0);
 }
}
