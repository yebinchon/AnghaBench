
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int * sd_logd_process; int * sd_quotad_process; int sd_flags; scalar_t__ sd_log_sequence; TYPE_2__* sd_jdesc; int sd_freeze_gl; } ;
struct gfs2_log_header_host {int lh_flags; int lh_blkno; scalar_t__ lh_sequence; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_holder {int gh_flags; } ;
struct gfs2_glock {TYPE_1__* gl_ops; } ;
struct TYPE_4__ {int jd_inode; } ;
struct TYPE_3__ {int (* go_inval ) (struct gfs2_glock*,int ) ;} ;


 int DIO_METADATA ;
 int EIO ;
 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_LOG_HEAD_UNMOUNT ;
 int GL_NOCACHE ;
 int LM_ST_SHARED ;
 int SDF_JOURNAL_LIVE ;
 int gfs2_consist (struct gfs2_sbd*) ;
 int gfs2_find_jhead (TYPE_2__*,struct gfs2_log_header_host*,int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_log_pointers_init (struct gfs2_sbd*,int ) ;
 int gfs2_quota_init (struct gfs2_sbd*) ;
 int init_threads (struct gfs2_sbd*) ;
 int kthread_stop (int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct gfs2_glock*,int ) ;

int gfs2_make_fs_rw(struct gfs2_sbd *sdp)
{
 struct gfs2_inode *ip = GFS2_I(sdp->sd_jdesc->jd_inode);
 struct gfs2_glock *j_gl = ip->i_gl;
 struct gfs2_holder freeze_gh;
 struct gfs2_log_header_host head;
 int error;

 error = init_threads(sdp);
 if (error)
  return error;

 error = gfs2_glock_nq_init(sdp->sd_freeze_gl, LM_ST_SHARED, 0,
       &freeze_gh);
 if (error)
  goto fail_threads;

 j_gl->gl_ops->go_inval(j_gl, DIO_METADATA);

 error = gfs2_find_jhead(sdp->sd_jdesc, &head, 0);
 if (error)
  goto fail;

 if (!(head.lh_flags & GFS2_LOG_HEAD_UNMOUNT)) {
  gfs2_consist(sdp);
  error = -EIO;
  goto fail;
 }


 sdp->sd_log_sequence = head.lh_sequence + 1;
 gfs2_log_pointers_init(sdp, head.lh_blkno);

 error = gfs2_quota_init(sdp);
 if (error)
  goto fail;

 set_bit(SDF_JOURNAL_LIVE, &sdp->sd_flags);

 gfs2_glock_dq_uninit(&freeze_gh);

 return 0;

fail:
 freeze_gh.gh_flags |= GL_NOCACHE;
 gfs2_glock_dq_uninit(&freeze_gh);
fail_threads:
 if (sdp->sd_quotad_process)
  kthread_stop(sdp->sd_quotad_process);
 sdp->sd_quotad_process = ((void*)0);
 if (sdp->sd_logd_process)
  kthread_stop(sdp->sd_logd_process);
 sdp->sd_logd_process = ((void*)0);
 return error;
}
