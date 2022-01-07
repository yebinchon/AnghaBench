
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int os_lockres; } ;
struct ocfs2_super {int * cconn; TYPE_1__ osb_orphan_scan; int osb_nfs_sync_lockres; int osb_rename_lockres; int osb_super_lockres; int * dc_task; } ;


 int kthread_stop (int *) ;
 int ocfs2_cluster_disconnect (int *,int) ;
 int ocfs2_dlm_shutdown_debug (struct ocfs2_super*) ;
 int ocfs2_drop_osb_locks (struct ocfs2_super*) ;
 int ocfs2_lock_res_free (int *) ;

void ocfs2_dlm_shutdown(struct ocfs2_super *osb,
   int hangup_pending)
{
 ocfs2_drop_osb_locks(osb);







 if (osb->dc_task) {
  kthread_stop(osb->dc_task);
  osb->dc_task = ((void*)0);
 }

 ocfs2_lock_res_free(&osb->osb_super_lockres);
 ocfs2_lock_res_free(&osb->osb_rename_lockres);
 ocfs2_lock_res_free(&osb->osb_nfs_sync_lockres);
 ocfs2_lock_res_free(&osb->osb_orphan_scan.os_lockres);

 ocfs2_cluster_disconnect(osb->cconn, hangup_pending);
 osb->cconn = ((void*)0);

 ocfs2_dlm_shutdown_debug(osb);
}
