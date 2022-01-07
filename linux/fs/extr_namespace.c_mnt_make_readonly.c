
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;


 int EBUSY ;
 int MNT_READONLY ;
 int MNT_WRITE_HOLD ;
 int lock_mount_hash () ;
 scalar_t__ mnt_get_writers (struct mount*) ;
 int smp_mb () ;
 int smp_wmb () ;
 int unlock_mount_hash () ;

__attribute__((used)) static int mnt_make_readonly(struct mount *mnt)
{
 int ret = 0;

 lock_mount_hash();
 mnt->mnt.mnt_flags |= MNT_WRITE_HOLD;




 smp_mb();
 if (mnt_get_writers(mnt) > 0)
  ret = -EBUSY;
 else
  mnt->mnt.mnt_flags |= MNT_READONLY;




 smp_wmb();
 mnt->mnt.mnt_flags &= ~MNT_WRITE_HOLD;
 unlock_mount_hash();
 return ret;
}
