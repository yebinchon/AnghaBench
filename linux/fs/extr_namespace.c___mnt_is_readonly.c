
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_flags; int mnt_sb; } ;


 int MNT_READONLY ;
 scalar_t__ sb_rdonly (int ) ;

bool __mnt_is_readonly(struct vfsmount *mnt)
{
 return (mnt->mnt_flags & MNT_READONLY) || sb_rdonly(mnt->mnt_sb);
}
