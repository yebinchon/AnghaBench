
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_orphan_scan {int os_orphan_scan_work; int os_state; int os_scantime; } ;
struct ocfs2_super {int ocfs2_wq; struct ocfs2_orphan_scan osb_orphan_scan; } ;


 int ORPHAN_SCAN_ACTIVE ;
 int ORPHAN_SCAN_INACTIVE ;
 int atomic_set (int *,int ) ;
 int ktime_get_seconds () ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_orphan_scan_timeout () ;
 int queue_delayed_work (int ,int *,int ) ;

void ocfs2_orphan_scan_start(struct ocfs2_super *osb)
{
 struct ocfs2_orphan_scan *os;

 os = &osb->osb_orphan_scan;
 os->os_scantime = ktime_get_seconds();
 if (ocfs2_is_hard_readonly(osb) || ocfs2_mount_local(osb))
  atomic_set(&os->os_state, ORPHAN_SCAN_INACTIVE);
 else {
  atomic_set(&os->os_state, ORPHAN_SCAN_ACTIVE);
  queue_delayed_work(osb->ocfs2_wq, &os->os_orphan_scan_work,
       ocfs2_orphan_scan_timeout());
 }
}
