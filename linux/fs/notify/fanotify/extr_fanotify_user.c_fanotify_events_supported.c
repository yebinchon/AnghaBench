
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path {TYPE_3__* mnt; } ;
typedef int __u64 ;
struct TYPE_6__ {TYPE_2__* mnt_sb; } ;
struct TYPE_5__ {TYPE_1__* s_type; } ;
struct TYPE_4__ {int fs_flags; } ;


 int EINVAL ;
 int FANOTIFY_PERM_EVENTS ;
 int FS_DISALLOW_NOTIFY_PERM ;

__attribute__((used)) static int fanotify_events_supported(struct path *path, __u64 mask)
{
 if (mask & FANOTIFY_PERM_EVENTS &&
     path->mnt->mnt_sb->s_type->fs_flags & FS_DISALLOW_NOTIFY_PERM)
  return -EINVAL;
 return 0;
}
