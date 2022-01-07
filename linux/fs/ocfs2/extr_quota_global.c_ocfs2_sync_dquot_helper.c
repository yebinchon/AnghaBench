
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_id; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct TYPE_6__ {unsigned long type; } ;
struct dquot {TYPE_3__ dq_id; struct super_block* dq_sb; } ;
typedef int handle_t ;
struct TYPE_5__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct TYPE_4__ {int dqio_sem; } ;


 scalar_t__ IS_ERR (int *) ;
 int OCFS2_QSYNC_CREDITS ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int PTR_ERR (int *) ;
 int down_write (int *) ;
 int from_kqid (int *,TYPE_3__) ;
 int init_user_ns ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_local_write_dquot (struct dquot*) ;
 int ocfs2_lock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_sync_dquot (struct dquot*) ;
 int ocfs2_unlock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 TYPE_2__* sb_dqinfo (struct super_block*,unsigned long) ;
 TYPE_1__* sb_dqopt (struct super_block*) ;
 int trace_ocfs2_sync_dquot_helper (int ,unsigned long,unsigned long,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_sync_dquot_helper(struct dquot *dquot, unsigned long type)
{
 handle_t *handle;
 struct super_block *sb = dquot->dq_sb;
 struct ocfs2_mem_dqinfo *oinfo = sb_dqinfo(sb, type)->dqi_priv;
 struct ocfs2_super *osb = OCFS2_SB(sb);
 int status = 0;

 trace_ocfs2_sync_dquot_helper(from_kqid(&init_user_ns, dquot->dq_id),
          dquot->dq_id.type,
          type, sb->s_id);
 if (type != dquot->dq_id.type)
  goto out;
 status = ocfs2_lock_global_qf(oinfo, 1);
 if (status < 0)
  goto out;

 handle = ocfs2_start_trans(osb, OCFS2_QSYNC_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto out_ilock;
 }
 down_write(&sb_dqopt(sb)->dqio_sem);
 status = ocfs2_sync_dquot(dquot);
 if (status < 0)
  mlog_errno(status);

 status = ocfs2_local_write_dquot(dquot);
 if (status < 0)
  mlog_errno(status);
 up_write(&sb_dqopt(sb)->dqio_sem);
 ocfs2_commit_trans(osb, handle);
out_ilock:
 ocfs2_unlock_global_qf(oinfo, 1);
out:
 return status;
}
