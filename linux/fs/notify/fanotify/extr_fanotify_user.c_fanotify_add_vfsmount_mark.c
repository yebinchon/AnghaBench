
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct fsnotify_group {int dummy; } ;
typedef int __u32 ;
typedef int __kernel_fsid_t ;
struct TYPE_2__ {int mnt_fsnotify_marks; } ;


 int FSNOTIFY_OBJ_TYPE_VFSMOUNT ;
 int fanotify_add_mark (struct fsnotify_group*,int *,int ,int ,unsigned int,int *) ;
 TYPE_1__* real_mount (struct vfsmount*) ;

__attribute__((used)) static int fanotify_add_vfsmount_mark(struct fsnotify_group *group,
          struct vfsmount *mnt, __u32 mask,
          unsigned int flags, __kernel_fsid_t *fsid)
{
 return fanotify_add_mark(group, &real_mount(mnt)->mnt_fsnotify_marks,
     FSNOTIFY_OBJ_TYPE_VFSMOUNT, mask, flags, fsid);
}
