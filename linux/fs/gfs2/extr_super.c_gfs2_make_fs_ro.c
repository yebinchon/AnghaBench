
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {TYPE_1__* sd_jdesc; int sd_log_blks_free; int sd_reserving_log; int sd_reserving_log_wait; int sd_vfs; int * sd_logd_process; int * sd_quotad_process; int sd_flags; int sd_freeze_gl; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_2__ {scalar_t__ jd_blocks; } ;


 int GFS2_LFC_MAKE_FS_RO ;
 int GFS2_LOG_HEAD_FLUSH_SHUTDOWN ;
 int GL_NOCACHE ;
 int LM_ST_SHARED ;
 int SDF_WITHDRAWN ;
 scalar_t__ atomic_read (int *) ;
 int flush_workqueue (int ) ;
 int gfs2_assert_warn (struct gfs2_sbd*,int) ;
 int gfs2_delete_workqueue ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 scalar_t__ gfs2_holder_initialized (struct gfs2_holder*) ;
 int gfs2_log_flush (struct gfs2_sbd*,int *,int) ;
 int gfs2_quota_cleanup (struct gfs2_sbd*) ;
 int gfs2_quota_sync (int ,int ) ;
 int gfs2_statfs_sync (int ,int ) ;
 int kthread_stop (int *) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

int gfs2_make_fs_ro(struct gfs2_sbd *sdp)
{
 struct gfs2_holder freeze_gh;
 int error;

 error = gfs2_glock_nq_init(sdp->sd_freeze_gl, LM_ST_SHARED, GL_NOCACHE,
       &freeze_gh);
 if (error && !test_bit(SDF_WITHDRAWN, &sdp->sd_flags))
  return error;

 flush_workqueue(gfs2_delete_workqueue);
 if (sdp->sd_quotad_process)
  kthread_stop(sdp->sd_quotad_process);
 sdp->sd_quotad_process = ((void*)0);
 if (sdp->sd_logd_process)
  kthread_stop(sdp->sd_logd_process);
 sdp->sd_logd_process = ((void*)0);

 gfs2_quota_sync(sdp->sd_vfs, 0);
 gfs2_statfs_sync(sdp->sd_vfs, 0);

 gfs2_log_flush(sdp, ((void*)0), GFS2_LOG_HEAD_FLUSH_SHUTDOWN |
         GFS2_LFC_MAKE_FS_RO);
 wait_event(sdp->sd_reserving_log_wait, atomic_read(&sdp->sd_reserving_log) == 0);
 gfs2_assert_warn(sdp, atomic_read(&sdp->sd_log_blks_free) == sdp->sd_jdesc->jd_blocks);

 if (gfs2_holder_initialized(&freeze_gh))
  gfs2_glock_dq_uninit(&freeze_gh);

 gfs2_quota_cleanup(sdp);

 return error;
}
