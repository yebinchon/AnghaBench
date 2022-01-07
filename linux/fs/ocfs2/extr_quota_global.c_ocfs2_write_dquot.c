
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct dquot {int dq_sb; TYPE_2__ dq_id; } ;
typedef int handle_t ;
struct TYPE_3__ {int dqio_sem; } ;


 scalar_t__ IS_ERR (int *) ;
 int OCFS2_QWRITE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int down_write (int *) ;
 int from_kqid (int *,TYPE_2__) ;
 int init_user_ns ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_local_write_dquot (struct dquot*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 TYPE_1__* sb_dqopt (int ) ;
 int trace_ocfs2_write_dquot (int ,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_write_dquot(struct dquot *dquot)
{
 handle_t *handle;
 struct ocfs2_super *osb = OCFS2_SB(dquot->dq_sb);
 int status = 0;

 trace_ocfs2_write_dquot(from_kqid(&init_user_ns, dquot->dq_id),
    dquot->dq_id.type);

 handle = ocfs2_start_trans(osb, OCFS2_QWRITE_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto out;
 }
 down_write(&sb_dqopt(dquot->dq_sb)->dqio_sem);
 status = ocfs2_local_write_dquot(dquot);
 up_write(&sb_dqopt(dquot->dq_sb)->dqio_sem);
 ocfs2_commit_trans(osb, handle);
out:
 return status;
}
