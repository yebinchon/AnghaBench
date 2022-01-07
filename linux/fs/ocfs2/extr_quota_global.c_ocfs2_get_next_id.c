
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_mem_dqinfo {int dqi_gi; } ;
struct kqid {int type; } ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 int ENOENT ;
 int ESRCH ;
 int from_kqid (int *,struct kqid) ;
 int init_user_ns ;
 int mlog_errno (int) ;
 int ocfs2_lock_global_qf (struct ocfs2_mem_dqinfo*,int ) ;
 int ocfs2_qinfo_lock (struct ocfs2_mem_dqinfo*,int ) ;
 int ocfs2_qinfo_unlock (struct ocfs2_mem_dqinfo*,int ) ;
 int ocfs2_unlock_global_qf (struct ocfs2_mem_dqinfo*,int ) ;
 int qtree_get_next_id (int *,struct kqid*) ;
 TYPE_1__* sb_dqinfo (struct super_block*,int) ;
 int sb_has_quota_loaded (struct super_block*,int) ;
 int trace_ocfs2_get_next_id (int ,int) ;

__attribute__((used)) static int ocfs2_get_next_id(struct super_block *sb, struct kqid *qid)
{
 int type = qid->type;
 struct ocfs2_mem_dqinfo *info = sb_dqinfo(sb, type)->dqi_priv;
 int status = 0;

 trace_ocfs2_get_next_id(from_kqid(&init_user_ns, *qid), type);
 if (!sb_has_quota_loaded(sb, type)) {
  status = -ESRCH;
  goto out;
 }
 status = ocfs2_lock_global_qf(info, 0);
 if (status < 0)
  goto out;
 status = ocfs2_qinfo_lock(info, 0);
 if (status < 0)
  goto out_global;
 status = qtree_get_next_id(&info->dqi_gi, qid);
 ocfs2_qinfo_unlock(info, 0);
out_global:
 ocfs2_unlock_global_qf(info, 0);
out:




 if (status && status != -ENOENT && status != -ESRCH)
  mlog_errno(status);
 return status;
}
