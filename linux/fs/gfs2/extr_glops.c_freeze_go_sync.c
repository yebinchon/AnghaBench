
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int sd_freeze_work; int sd_vfs; int sd_freeze_state; int sd_flags; } ;
struct TYPE_2__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {scalar_t__ gl_state; TYPE_1__ gl_name; } ;


 int GFS2_LFC_FREEZE_GO_SYNC ;
 int GFS2_LOG_HEAD_FLUSH_FREEZE ;
 scalar_t__ LM_ST_SHARED ;
 int SDF_JOURNAL_LIVE ;
 int SFS_STARTING_FREEZE ;
 int atomic_set (int *,int ) ;
 int freeze_super (int ) ;
 int fs_info (struct gfs2_sbd*,char*,int) ;
 int gfs2_assert_withdraw (struct gfs2_sbd*,int ) ;
 int gfs2_freeze_wq ;
 int gfs2_log_flush (struct gfs2_sbd*,int *,int) ;
 int queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void freeze_go_sync(struct gfs2_glock *gl)
{
 int error = 0;
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;

 if (gl->gl_state == LM_ST_SHARED &&
     test_bit(SDF_JOURNAL_LIVE, &sdp->sd_flags)) {
  atomic_set(&sdp->sd_freeze_state, SFS_STARTING_FREEZE);
  error = freeze_super(sdp->sd_vfs);
  if (error) {
   fs_info(sdp, "GFS2: couldn't freeze filesystem: %d\n",
    error);
   gfs2_assert_withdraw(sdp, 0);
  }
  queue_work(gfs2_freeze_wq, &sdp->sd_freeze_work);
  gfs2_log_flush(sdp, ((void*)0), GFS2_LOG_HEAD_FLUSH_FREEZE |
          GFS2_LFC_FREEZE_GO_SYNC);
 }
}
