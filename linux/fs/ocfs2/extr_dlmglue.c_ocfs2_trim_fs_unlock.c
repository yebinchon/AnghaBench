
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_trim_fs_lvb {void* lvb_trimlen; void* lvb_minlen; void* lvb_len; void* lvb_start; int lvb_nodenum; int lvb_success; int lvb_version; } ;
struct ocfs2_trim_fs_info {int tf_trimlen; int tf_minlen; int tf_len; int tf_start; int tf_nodenum; int tf_success; } ;
struct ocfs2_lock_res {int l_lksb; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_trim_fs_lockres; } ;


 int DLM_LOCK_EX ;
 int OCFS2_TRIMFS_LVB_VERSION ;
 int cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int ) ;
 struct ocfs2_trim_fs_lvb* ocfs2_dlm_lvb (int *) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_trim_fs_unlock(struct ocfs2_super *osb,
     struct ocfs2_trim_fs_info *info)
{
 struct ocfs2_trim_fs_lvb *lvb;
 struct ocfs2_lock_res *lockres = &osb->osb_trim_fs_lockres;

 if (ocfs2_mount_local(osb))
  return;

 if (info) {
  lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
  lvb->lvb_version = OCFS2_TRIMFS_LVB_VERSION;
  lvb->lvb_success = info->tf_success;
  lvb->lvb_nodenum = cpu_to_be32(info->tf_nodenum);
  lvb->lvb_start = cpu_to_be64(info->tf_start);
  lvb->lvb_len = cpu_to_be64(info->tf_len);
  lvb->lvb_minlen = cpu_to_be64(info->tf_minlen);
  lvb->lvb_trimlen = cpu_to_be64(info->tf_trimlen);
 }

 ocfs2_cluster_unlock(osb, lockres, DLM_LOCK_EX);
}
