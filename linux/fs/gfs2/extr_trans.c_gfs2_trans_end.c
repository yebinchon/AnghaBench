
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_trans {scalar_t__ tr_num_buf_new; scalar_t__ tr_num_databuf_new; scalar_t__ tr_num_buf_rm; scalar_t__ tr_num_databuf_rm; scalar_t__ tr_blocks; scalar_t__ tr_num_revoke; scalar_t__ tr_revokes; int tr_flags; int tr_reserved; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; int sd_log_flush_lock; } ;
typedef scalar_t__ s64 ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;
struct TYPE_3__ {int s_flags; } ;


 int GFS2_LFC_TRANS_END ;
 int GFS2_LOG_HEAD_FLUSH_NORMAL ;
 int SB_SYNCHRONOUS ;
 int TR_ALLOCED ;
 int TR_ATTACHED ;
 int TR_TOUCHED ;
 TYPE_2__* current ;
 scalar_t__ gfs2_assert_withdraw (struct gfs2_sbd*,int) ;
 int gfs2_log_commit (struct gfs2_sbd*,struct gfs2_trans*) ;
 int gfs2_log_flush (struct gfs2_sbd*,int *,int) ;
 int gfs2_log_release (struct gfs2_sbd*,int ) ;
 int gfs2_print_trans (struct gfs2_sbd*,struct gfs2_trans*) ;
 int kfree (struct gfs2_trans*) ;
 int sb_end_intwrite (TYPE_1__*) ;
 int test_bit (int ,int *) ;
 int up_read (int *) ;

void gfs2_trans_end(struct gfs2_sbd *sdp)
{
 struct gfs2_trans *tr = current->journal_info;
 s64 nbuf;
 int alloced = test_bit(TR_ALLOCED, &tr->tr_flags);

 current->journal_info = ((void*)0);

 if (!test_bit(TR_TOUCHED, &tr->tr_flags)) {
  gfs2_log_release(sdp, tr->tr_reserved);
  if (alloced) {
   kfree(tr);
   sb_end_intwrite(sdp->sd_vfs);
  }
  return;
 }

 nbuf = tr->tr_num_buf_new + tr->tr_num_databuf_new;
 nbuf -= tr->tr_num_buf_rm;
 nbuf -= tr->tr_num_databuf_rm;

 if (gfs2_assert_withdraw(sdp, (nbuf <= tr->tr_blocks) &&
           (tr->tr_num_revoke <= tr->tr_revokes)))
  gfs2_print_trans(sdp, tr);

 gfs2_log_commit(sdp, tr);
 if (alloced && !test_bit(TR_ATTACHED, &tr->tr_flags))
  kfree(tr);
 up_read(&sdp->sd_log_flush_lock);

 if (sdp->sd_vfs->s_flags & SB_SYNCHRONOUS)
  gfs2_log_flush(sdp, ((void*)0), GFS2_LOG_HEAD_FLUSH_NORMAL |
          GFS2_LFC_TRANS_END);
 if (alloced)
  sb_end_intwrite(sdp->sd_vfs);
}
