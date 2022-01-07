
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_lock_res {int l_lksb; } ;
struct TYPE_2__ {struct ocfs2_lock_res os_lockres; } ;
struct ocfs2_super {TYPE_1__ osb_orphan_scan; } ;
struct ocfs2_orphan_scan_lvb {int lvb_os_seqno; int lvb_version; } ;


 int DLM_LOCK_EX ;
 int OCFS2_ORPHAN_LVB_VERSION ;
 int cpu_to_be32 (int ) ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int ) ;
 struct ocfs2_orphan_scan_lvb* ocfs2_dlm_lvb (int *) ;
 int ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_orphan_scan_unlock(struct ocfs2_super *osb, u32 seqno)
{
 struct ocfs2_lock_res *lockres;
 struct ocfs2_orphan_scan_lvb *lvb;

 if (!ocfs2_is_hard_readonly(osb) && !ocfs2_mount_local(osb)) {
  lockres = &osb->osb_orphan_scan.os_lockres;
  lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
  lvb->lvb_version = OCFS2_ORPHAN_LVB_VERSION;
  lvb->lvb_os_seqno = cpu_to_be32(seqno);
  ocfs2_cluster_unlock(osb, lockres, DLM_LOCK_EX);
 }
}
