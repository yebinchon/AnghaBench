
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int os_lockres; } ;
struct ocfs2_super {TYPE_1__ osb_orphan_scan; int osb_nfs_sync_lockres; int osb_rename_lockres; int osb_super_lockres; } ;


 int ocfs2_simple_drop_lockres (struct ocfs2_super*,int *) ;

__attribute__((used)) static void ocfs2_drop_osb_locks(struct ocfs2_super *osb)
{
 ocfs2_simple_drop_lockres(osb, &osb->osb_super_lockres);
 ocfs2_simple_drop_lockres(osb, &osb->osb_rename_lockres);
 ocfs2_simple_drop_lockres(osb, &osb->osb_nfs_sync_lockres);
 ocfs2_simple_drop_lockres(osb, &osb->osb_orphan_scan.os_lockres);
}
