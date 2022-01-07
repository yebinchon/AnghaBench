
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int vol_state; int osb_mount_event; } ;


 int EBUSY ;
 scalar_t__ VOLUME_DISABLED ;
 scalar_t__ VOLUME_MOUNTED ;
 scalar_t__ VOLUME_MOUNTED_QUOTAS ;
 scalar_t__ atomic_read (int *) ;
 int mlog (int ,char*) ;
 int trace_ocfs2_wait_on_mount (scalar_t__) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int __ocfs2_wait_on_mount(struct ocfs2_super *osb, int quota)
{



 wait_event(osb->osb_mount_event,
    (!quota && atomic_read(&osb->vol_state) == VOLUME_MOUNTED) ||
     atomic_read(&osb->vol_state) == VOLUME_MOUNTED_QUOTAS ||
     atomic_read(&osb->vol_state) == VOLUME_DISABLED);




 if (atomic_read(&osb->vol_state) == VOLUME_DISABLED) {
  trace_ocfs2_wait_on_mount(VOLUME_DISABLED);
  mlog(0, "mount error, exiting!\n");
  return -EBUSY;
 }

 return 0;
}
