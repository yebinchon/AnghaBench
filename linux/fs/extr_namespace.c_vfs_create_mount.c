
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; int mnt_root; int mnt_flags; } ;
struct mount {struct vfsmount mnt; int mnt_instance; struct mount* mnt_parent; int mnt_mountpoint; } ;
struct fs_context {int sb_flags; TYPE_2__* root; scalar_t__ source; } ;
struct TYPE_4__ {TYPE_1__* d_sb; } ;
struct TYPE_3__ {int s_mounts; int s_active; } ;


 int EINVAL ;
 int ENOMEM ;
 struct vfsmount* ERR_PTR (int ) ;
 int MNT_INTERNAL ;
 int SB_KERNMOUNT ;
 struct mount* alloc_vfsmnt (char*) ;
 int atomic_inc (int *) ;
 int dget (TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 int lock_mount_hash () ;
 int unlock_mount_hash () ;

struct vfsmount *vfs_create_mount(struct fs_context *fc)
{
 struct mount *mnt;

 if (!fc->root)
  return ERR_PTR(-EINVAL);

 mnt = alloc_vfsmnt(fc->source ?: "none");
 if (!mnt)
  return ERR_PTR(-ENOMEM);

 if (fc->sb_flags & SB_KERNMOUNT)
  mnt->mnt.mnt_flags = MNT_INTERNAL;

 atomic_inc(&fc->root->d_sb->s_active);
 mnt->mnt.mnt_sb = fc->root->d_sb;
 mnt->mnt.mnt_root = dget(fc->root);
 mnt->mnt_mountpoint = mnt->mnt.mnt_root;
 mnt->mnt_parent = mnt;

 lock_mount_hash();
 list_add_tail(&mnt->mnt_instance, &mnt->mnt.mnt_sb->s_mounts);
 unlock_mount_hash();
 return &mnt->mnt;
}
