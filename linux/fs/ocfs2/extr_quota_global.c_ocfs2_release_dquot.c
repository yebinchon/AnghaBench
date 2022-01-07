
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_super {scalar_t__ dc_task; int dquot_drop_work; int ocfs2_wq; int dquot_drop_list; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct TYPE_5__ {int type; } ;
struct dquot {int dq_lock; int dq_flags; scalar_t__ dq_off; TYPE_2__ dq_id; int dq_sb; int dq_count; } ;
typedef int handle_t ;
struct TYPE_6__ {int list; } ;
struct TYPE_4__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 int DQ_ACTIVE_B ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_3__* OCFS2_DQUOT (struct dquot*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ current ;
 int dqgrab (struct dquot*) ;
 int from_kqid (int *,TYPE_2__) ;
 int init_user_ns ;
 scalar_t__ llist_add (int *,int *) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_calc_qdel_credits (int ,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_global_release_dquot (struct dquot*) ;
 int ocfs2_local_release_dquot (int *,struct dquot*) ;
 int ocfs2_lock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_unlock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 int queue_work (int ,int *) ;
 TYPE_1__* sb_dqinfo (int ,int ) ;
 int trace_ocfs2_release_dquot (int ,int ) ;

__attribute__((used)) static int ocfs2_release_dquot(struct dquot *dquot)
{
 handle_t *handle;
 struct ocfs2_mem_dqinfo *oinfo =
   sb_dqinfo(dquot->dq_sb, dquot->dq_id.type)->dqi_priv;
 struct ocfs2_super *osb = OCFS2_SB(dquot->dq_sb);
 int status = 0;

 trace_ocfs2_release_dquot(from_kqid(&init_user_ns, dquot->dq_id),
      dquot->dq_id.type);

 mutex_lock(&dquot->dq_lock);

 if (atomic_read(&dquot->dq_count) > 1)
  goto out;

 if (current == osb->dc_task) {





  dqgrab(dquot);

  if (llist_add(&OCFS2_DQUOT(dquot)->list, &osb->dquot_drop_list))
   queue_work(osb->ocfs2_wq, &osb->dquot_drop_work);
  goto out;
 }
 status = ocfs2_lock_global_qf(oinfo, 1);
 if (status < 0)
  goto out;
 handle = ocfs2_start_trans(osb,
  ocfs2_calc_qdel_credits(dquot->dq_sb, dquot->dq_id.type));
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto out_ilock;
 }

 status = ocfs2_global_release_dquot(dquot);
 if (status < 0) {
  mlog_errno(status);
  goto out_trans;
 }
 status = ocfs2_local_release_dquot(handle, dquot);




 if (status < 0)
  mlog_errno(status);





 dquot->dq_off = 0;
 clear_bit(DQ_ACTIVE_B, &dquot->dq_flags);
out_trans:
 ocfs2_commit_trans(osb, handle);
out_ilock:
 ocfs2_unlock_global_qf(oinfo, 1);
out:
 mutex_unlock(&dquot->dq_lock);
 if (status)
  mlog_errno(status);
 return status;
}
