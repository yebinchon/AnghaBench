
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int mnt_flags; } ;
struct mount {int mnt_ns; TYPE_1__ mnt; } ;


 unsigned int MNT_USER_SETTABLE_MASK ;
 int lock_mount_hash () ;
 int touch_mnt_namespace (int ) ;
 int unlock_mount_hash () ;

__attribute__((used)) static void set_mount_attributes(struct mount *mnt, unsigned int mnt_flags)
{
 lock_mount_hash();
 mnt_flags |= mnt->mnt.mnt_flags & ~MNT_USER_SETTABLE_MASK;
 mnt->mnt.mnt_flags = mnt_flags;
 touch_mnt_namespace(mnt->mnt_ns);
 unlock_mount_hash();
}
