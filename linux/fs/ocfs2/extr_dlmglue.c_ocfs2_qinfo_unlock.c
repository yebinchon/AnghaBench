
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct TYPE_2__ {int dqi_sb; } ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; struct ocfs2_lock_res dqi_gqlock; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int) ;
 int ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_qinfo_unlock(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
 struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
 struct ocfs2_super *osb = OCFS2_SB(oinfo->dqi_gi.dqi_sb);
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;

 if (!ocfs2_is_hard_readonly(osb) && !ocfs2_mount_local(osb))
  ocfs2_cluster_unlock(osb, lockres, level);
}
