
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_flags; } ;
struct timespec64 {int dummy; } ;
struct path {struct vfsmount* mnt; } ;
struct inode {int i_flags; int i_atime; int i_mode; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_flags; } ;


 scalar_t__ HAS_UNMAPPED_ID (struct inode*) ;
 scalar_t__ IS_NOATIME (struct inode*) ;
 int MNT_NOATIME ;
 int MNT_NODIRATIME ;
 int SB_NODIRATIME ;
 scalar_t__ S_ISDIR (int ) ;
 int S_NOATIME ;
 struct timespec64 current_time (struct inode*) ;
 int relatime_need_update (struct vfsmount*,struct inode*,struct timespec64) ;
 scalar_t__ timespec64_equal (int *,struct timespec64*) ;

bool atime_needs_update(const struct path *path, struct inode *inode)
{
 struct vfsmount *mnt = path->mnt;
 struct timespec64 now;

 if (inode->i_flags & S_NOATIME)
  return 0;




 if (HAS_UNMAPPED_ID(inode))
  return 0;

 if (IS_NOATIME(inode))
  return 0;
 if ((inode->i_sb->s_flags & SB_NODIRATIME) && S_ISDIR(inode->i_mode))
  return 0;

 if (mnt->mnt_flags & MNT_NOATIME)
  return 0;
 if ((mnt->mnt_flags & MNT_NODIRATIME) && S_ISDIR(inode->i_mode))
  return 0;

 now = current_time(inode);

 if (!relatime_need_update(mnt, inode, now))
  return 0;

 if (timespec64_equal(&inode->i_atime, &now))
  return 0;

 return 1;
}
