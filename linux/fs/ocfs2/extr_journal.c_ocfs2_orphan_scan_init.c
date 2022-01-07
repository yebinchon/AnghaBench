
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_orphan_scan {int os_orphan_scan_work; int os_lock; scalar_t__ os_seqno; scalar_t__ os_count; struct ocfs2_super* os_osb; } ;
struct ocfs2_super {struct ocfs2_orphan_scan osb_orphan_scan; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int mutex_init (int *) ;
 int ocfs2_orphan_scan_work ;

void ocfs2_orphan_scan_init(struct ocfs2_super *osb)
{
 struct ocfs2_orphan_scan *os;

 os = &osb->osb_orphan_scan;
 os->os_osb = osb;
 os->os_count = 0;
 os->os_seqno = 0;
 mutex_init(&os->os_lock);
 INIT_DELAYED_WORK(&os->os_orphan_scan_work, ocfs2_orphan_scan_work);
}
