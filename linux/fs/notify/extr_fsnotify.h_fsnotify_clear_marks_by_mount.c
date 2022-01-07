
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int mnt_fsnotify_marks; } ;


 int fsnotify_destroy_marks (int *) ;
 TYPE_1__* real_mount (struct vfsmount*) ;

__attribute__((used)) static inline void fsnotify_clear_marks_by_mount(struct vfsmount *mnt)
{
 fsnotify_destroy_marks(&real_mount(mnt)->mnt_fsnotify_marks);
}
