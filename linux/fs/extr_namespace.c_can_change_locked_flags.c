
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;


 unsigned int MNT_ATIME_MASK ;
 unsigned int MNT_LOCK_ATIME ;
 unsigned int MNT_LOCK_NODEV ;
 unsigned int MNT_LOCK_NOEXEC ;
 unsigned int MNT_LOCK_NOSUID ;
 unsigned int MNT_LOCK_READONLY ;
 unsigned int MNT_NODEV ;
 unsigned int MNT_NOEXEC ;
 unsigned int MNT_NOSUID ;
 unsigned int MNT_READONLY ;

__attribute__((used)) static bool can_change_locked_flags(struct mount *mnt, unsigned int mnt_flags)
{
 unsigned int fl = mnt->mnt.mnt_flags;

 if ((fl & MNT_LOCK_READONLY) &&
     !(mnt_flags & MNT_READONLY))
  return 0;

 if ((fl & MNT_LOCK_NODEV) &&
     !(mnt_flags & MNT_NODEV))
  return 0;

 if ((fl & MNT_LOCK_NOSUID) &&
     !(mnt_flags & MNT_NOSUID))
  return 0;

 if ((fl & MNT_LOCK_NOEXEC) &&
     !(mnt_flags & MNT_NOEXEC))
  return 0;

 if ((fl & MNT_LOCK_ATIME) &&
     ((fl & MNT_ATIME_MASK) != (mnt_flags & MNT_ATIME_MASK)))
  return 0;

 return 1;
}
