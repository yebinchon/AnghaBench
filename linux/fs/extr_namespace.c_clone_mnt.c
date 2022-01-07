
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_mounts; int s_active; } ;
struct TYPE_2__ {int mnt_flags; int mnt_root; struct super_block* mnt_sb; } ;
struct mount {int mnt_expire; struct mount* mnt_master; int mnt_slave; int mnt_share; int mnt_slave_list; int mnt_instance; struct mount* mnt_parent; TYPE_1__ mnt; int mnt_mountpoint; scalar_t__ mnt_group_id; int mnt_devname; } ;
struct dentry {int dummy; } ;


 int CLEAR_MNT_SHARED (struct mount*) ;
 int CL_EXPIRE ;
 int CL_MAKE_SHARED ;
 int CL_PRIVATE ;
 int CL_SHARED_TO_SLAVE ;
 int CL_SLAVE ;
 int ENOMEM ;
 struct mount* ERR_PTR (int) ;
 scalar_t__ IS_MNT_SHARED (struct mount*) ;
 scalar_t__ IS_MNT_SLAVE (struct mount*) ;
 int MNT_INTERNAL ;
 int MNT_MARKED ;
 int MNT_WRITE_HOLD ;
 struct mount* alloc_vfsmnt (int ) ;
 int atomic_inc (int *) ;
 int dget (struct dentry*) ;
 int free_vfsmnt (struct mount*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int lock_mount_hash () ;
 int mnt_alloc_group_id (struct mount*) ;
 int mnt_free_id (struct mount*) ;
 int set_mnt_shared (struct mount*) ;
 int unlock_mount_hash () ;

__attribute__((used)) static struct mount *clone_mnt(struct mount *old, struct dentry *root,
     int flag)
{
 struct super_block *sb = old->mnt.mnt_sb;
 struct mount *mnt;
 int err;

 mnt = alloc_vfsmnt(old->mnt_devname);
 if (!mnt)
  return ERR_PTR(-ENOMEM);

 if (flag & (CL_SLAVE | CL_PRIVATE | CL_SHARED_TO_SLAVE))
  mnt->mnt_group_id = 0;
 else
  mnt->mnt_group_id = old->mnt_group_id;

 if ((flag & CL_MAKE_SHARED) && !mnt->mnt_group_id) {
  err = mnt_alloc_group_id(mnt);
  if (err)
   goto out_free;
 }

 mnt->mnt.mnt_flags = old->mnt.mnt_flags;
 mnt->mnt.mnt_flags &= ~(MNT_WRITE_HOLD|MNT_MARKED|MNT_INTERNAL);

 atomic_inc(&sb->s_active);
 mnt->mnt.mnt_sb = sb;
 mnt->mnt.mnt_root = dget(root);
 mnt->mnt_mountpoint = mnt->mnt.mnt_root;
 mnt->mnt_parent = mnt;
 lock_mount_hash();
 list_add_tail(&mnt->mnt_instance, &sb->s_mounts);
 unlock_mount_hash();

 if ((flag & CL_SLAVE) ||
     ((flag & CL_SHARED_TO_SLAVE) && IS_MNT_SHARED(old))) {
  list_add(&mnt->mnt_slave, &old->mnt_slave_list);
  mnt->mnt_master = old;
  CLEAR_MNT_SHARED(mnt);
 } else if (!(flag & CL_PRIVATE)) {
  if ((flag & CL_MAKE_SHARED) || IS_MNT_SHARED(old))
   list_add(&mnt->mnt_share, &old->mnt_share);
  if (IS_MNT_SLAVE(old))
   list_add(&mnt->mnt_slave, &old->mnt_slave);
  mnt->mnt_master = old->mnt_master;
 } else {
  CLEAR_MNT_SHARED(mnt);
 }
 if (flag & CL_MAKE_SHARED)
  set_mnt_shared(mnt);



 if (flag & CL_EXPIRE) {
  if (!list_empty(&old->mnt_expire))
   list_add(&mnt->mnt_expire, &old->mnt_expire);
 }

 return mnt;

 out_free:
 mnt_free_id(mnt);
 free_vfsmnt(mnt);
 return ERR_PTR(err);
}
