
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct fsnotify_group {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int mnt_fsnotify_marks; } ;


 int fanotify_remove_mark (struct fsnotify_group*,int *,int ,unsigned int) ;
 TYPE_1__* real_mount (struct vfsmount*) ;

__attribute__((used)) static int fanotify_remove_vfsmount_mark(struct fsnotify_group *group,
      struct vfsmount *mnt, __u32 mask,
      unsigned int flags)
{
 return fanotify_remove_mark(group, &real_mount(mnt)->mnt_fsnotify_marks,
        mask, flags);
}
