
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_flags; } ;
struct mount {int dummy; } ;


 int MNT_DOOMED ;
 int MNT_SYNC_UMOUNT ;
 scalar_t__ likely (int) ;
 int lock_mount_hash () ;
 int mnt_add_count (struct mount*,int) ;
 int mount_lock ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 struct mount* real_mount (struct vfsmount*) ;
 int smp_mb () ;
 scalar_t__ unlikely (int) ;
 int unlock_mount_hash () ;

int __legitimize_mnt(struct vfsmount *bastard, unsigned seq)
{
 struct mount *mnt;
 if (read_seqretry(&mount_lock, seq))
  return 1;
 if (bastard == ((void*)0))
  return 0;
 mnt = real_mount(bastard);
 mnt_add_count(mnt, 1);
 smp_mb();
 if (likely(!read_seqretry(&mount_lock, seq)))
  return 0;
 if (bastard->mnt_flags & MNT_SYNC_UMOUNT) {
  mnt_add_count(mnt, -1);
  return 1;
 }
 lock_mount_hash();
 if (unlikely(bastard->mnt_flags & MNT_DOOMED)) {
  mnt_add_count(mnt, -1);
  unlock_mount_hash();
  return 1;
 }
 unlock_mount_hash();

 return -1;
}
