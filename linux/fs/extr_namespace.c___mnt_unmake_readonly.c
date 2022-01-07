
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;


 int MNT_READONLY ;
 int lock_mount_hash () ;
 int unlock_mount_hash () ;

__attribute__((used)) static int __mnt_unmake_readonly(struct mount *mnt)
{
 lock_mount_hash();
 mnt->mnt.mnt_flags &= ~MNT_READONLY;
 unlock_mount_hash();
 return 0;
}
