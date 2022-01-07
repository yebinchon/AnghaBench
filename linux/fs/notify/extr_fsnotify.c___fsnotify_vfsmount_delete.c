
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int fsnotify_clear_marks_by_mount (struct vfsmount*) ;

void __fsnotify_vfsmount_delete(struct vfsmount *mnt)
{
 fsnotify_clear_marks_by_mount(mnt);
}
