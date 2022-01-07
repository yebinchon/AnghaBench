
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int s_user_ns; TYPE_1__* s_op; } ;
struct TYPE_9__ {int mnt_flags; struct super_block* mnt_sb; } ;
struct mount {int mnt_list; TYPE_4__ mnt; int mnt_expiry_mark; } ;
struct TYPE_10__ {TYPE_3__* fs; } ;
struct TYPE_7__ {TYPE_4__* mnt; } ;
struct TYPE_8__ {TYPE_2__ root; } ;
struct TYPE_6__ {int (* umount_begin ) (struct super_block*) ;} ;


 int CAP_SYS_ADMIN ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int MNT_DETACH ;
 int MNT_EXPIRE ;
 int MNT_FORCE ;
 int MNT_LOCKED ;
 int UMOUNT_PROPAGATE ;
 int UMOUNT_SYNC ;
 TYPE_5__* current ;
 int do_umount_root (struct super_block*) ;
 int event ;
 int list_empty (int *) ;
 int lock_mount_hash () ;
 int mnt_get_count (struct mount*) ;
 int namespace_lock () ;
 int namespace_unlock () ;
 int ns_capable (int ,int ) ;
 int propagate_mount_busy (struct mount*,int) ;
 int security_sb_umount (TYPE_4__*,int) ;
 int shrink_submounts (struct mount*) ;
 int stub1 (struct super_block*) ;
 int umount_tree (struct mount*,int) ;
 int unlock_mount_hash () ;
 int xchg (int *,int) ;

__attribute__((used)) static int do_umount(struct mount *mnt, int flags)
{
 struct super_block *sb = mnt->mnt.mnt_sb;
 int retval;

 retval = security_sb_umount(&mnt->mnt, flags);
 if (retval)
  return retval;







 if (flags & MNT_EXPIRE) {
  if (&mnt->mnt == current->fs->root.mnt ||
      flags & (MNT_FORCE | MNT_DETACH))
   return -EINVAL;





  lock_mount_hash();
  if (mnt_get_count(mnt) != 2) {
   unlock_mount_hash();
   return -EBUSY;
  }
  unlock_mount_hash();

  if (!xchg(&mnt->mnt_expiry_mark, 1))
   return -EAGAIN;
 }
 if (flags & MNT_FORCE && sb->s_op->umount_begin) {
  sb->s_op->umount_begin(sb);
 }
 if (&mnt->mnt == current->fs->root.mnt && !(flags & MNT_DETACH)) {




  if (!ns_capable(sb->s_user_ns, CAP_SYS_ADMIN))
   return -EPERM;
  return do_umount_root(sb);
 }

 namespace_lock();
 lock_mount_hash();


 retval = -EINVAL;
 if (mnt->mnt.mnt_flags & MNT_LOCKED)
  goto out;

 event++;
 if (flags & MNT_DETACH) {
  if (!list_empty(&mnt->mnt_list))
   umount_tree(mnt, UMOUNT_PROPAGATE);
  retval = 0;
 } else {
  shrink_submounts(mnt);
  retval = -EBUSY;
  if (!propagate_mount_busy(mnt, 2)) {
   if (!list_empty(&mnt->mnt_list))
    umount_tree(mnt, UMOUNT_PROPAGATE|UMOUNT_SYNC);
   retval = 0;
  }
 }
out:
 unlock_mount_hash();
 namespace_unlock();
 return retval;
}
