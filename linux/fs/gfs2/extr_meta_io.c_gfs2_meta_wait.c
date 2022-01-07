
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_trans {int tr_flags; } ;
struct gfs2_sbd {int sd_flags; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;


 int EIO ;
 int SDF_WITHDRAWN ;
 int TR_TOUCHED ;
 int buffer_uptodate (struct buffer_head*) ;
 TYPE_1__* current ;
 int gfs2_io_error_bh_wd (struct gfs2_sbd*,struct buffer_head*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (scalar_t__) ;
 int wait_on_buffer (struct buffer_head*) ;

int gfs2_meta_wait(struct gfs2_sbd *sdp, struct buffer_head *bh)
{
 if (unlikely(test_bit(SDF_WITHDRAWN, &sdp->sd_flags)))
  return -EIO;

 wait_on_buffer(bh);

 if (!buffer_uptodate(bh)) {
  struct gfs2_trans *tr = current->journal_info;
  if (tr && test_bit(TR_TOUCHED, &tr->tr_flags))
   gfs2_io_error_bh_wd(sdp, bh);
  return -EIO;
 }
 if (unlikely(test_bit(SDF_WITHDRAWN, &sdp->sd_flags)))
  return -EIO;

 return 0;
}
