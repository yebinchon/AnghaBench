
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int s_blocksize_bits; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dqi_gi; struct inode* dqi_gqinode; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int dqb_curinodes; int dqb_curspace; } ;
struct TYPE_8__ {int type; } ;
struct dquot {int dq_lock; int dq_flags; int dq_off; TYPE_1__ dq_dqb; TYPE_4__ dq_id; struct super_block* dq_sb; } ;
typedef int handle_t ;
struct TYPE_9__ {int dq_originodes; int dq_origspace; int dq_use_count; } ;
struct TYPE_7__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 int DQ_ACTIVE_B ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_5__* OCFS2_DQUOT (struct dquot*) ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int PTR_ERR (int *) ;
 int WARN_ON (int ) ;
 int __ocfs2_global_write_info (struct super_block*,int) ;
 int from_kqid (int *,TYPE_4__) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ info_dirty (TYPE_2__*) ;
 int init_user_ns ;
 int journal_current_handle () ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_calc_global_qinit_credits (struct super_block*,int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_create_local_dquot (struct dquot*) ;
 int ocfs2_extend_no_holes (struct inode*,int *,scalar_t__,scalar_t__) ;
 int ocfs2_global_qinit_alloc (struct super_block*,int) ;
 int ocfs2_lock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 int ocfs2_qinfo_lock (struct ocfs2_mem_dqinfo*,int) ;
 int ocfs2_qinfo_unlock (struct ocfs2_mem_dqinfo*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_unlock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 int qtree_read_dquot (int *,struct dquot*) ;
 int qtree_write_dquot (int *,struct dquot*) ;
 TYPE_2__* sb_dqinfo (struct super_block*,int) ;
 int set_bit (int ,int *) ;
 int trace_ocfs2_acquire_dquot (int ,int) ;

__attribute__((used)) static int ocfs2_acquire_dquot(struct dquot *dquot)
{
 int status = 0, err;
 int ex = 0;
 struct super_block *sb = dquot->dq_sb;
 struct ocfs2_super *osb = OCFS2_SB(sb);
 int type = dquot->dq_id.type;
 struct ocfs2_mem_dqinfo *info = sb_dqinfo(sb, type)->dqi_priv;
 struct inode *gqinode = info->dqi_gqinode;
 int need_alloc = ocfs2_global_qinit_alloc(sb, type);
 handle_t *handle;

 trace_ocfs2_acquire_dquot(from_kqid(&init_user_ns, dquot->dq_id),
      type);
 mutex_lock(&dquot->dq_lock);




 status = ocfs2_lock_global_qf(info, 1);
 if (status < 0)
  goto out;
 status = ocfs2_qinfo_lock(info, 0);
 if (status < 0)
  goto out_dq;




 status = qtree_read_dquot(&info->dqi_gi, dquot);
 ocfs2_qinfo_unlock(info, 0);
 if (status < 0)
  goto out_dq;

 OCFS2_DQUOT(dquot)->dq_use_count++;
 OCFS2_DQUOT(dquot)->dq_origspace = dquot->dq_dqb.dqb_curspace;
 OCFS2_DQUOT(dquot)->dq_originodes = dquot->dq_dqb.dqb_curinodes;
 if (!dquot->dq_off) {
  ex = 1;




  WARN_ON(journal_current_handle());
  status = ocfs2_extend_no_holes(gqinode, ((void*)0),
   i_size_read(gqinode) + (need_alloc << sb->s_blocksize_bits),
   i_size_read(gqinode));
  if (status < 0)
   goto out_dq;
 }

 handle = ocfs2_start_trans(osb,
       ocfs2_calc_global_qinit_credits(sb, type));
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  goto out_dq;
 }
 status = ocfs2_qinfo_lock(info, ex);
 if (status < 0)
  goto out_trans;
 status = qtree_write_dquot(&info->dqi_gi, dquot);
 if (ex && info_dirty(sb_dqinfo(sb, type))) {
  err = __ocfs2_global_write_info(sb, type);
  if (!status)
   status = err;
 }
 ocfs2_qinfo_unlock(info, ex);
out_trans:
 ocfs2_commit_trans(osb, handle);
out_dq:
 ocfs2_unlock_global_qf(info, 1);
 if (status < 0)
  goto out;

 status = ocfs2_create_local_dquot(dquot);
 if (status < 0)
  goto out;
 set_bit(DQ_ACTIVE_B, &dquot->dq_flags);
out:
 mutex_unlock(&dquot->dq_lock);
 if (status)
  mlog_errno(status);
 return status;
}
