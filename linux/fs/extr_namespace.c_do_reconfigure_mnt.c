
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_umount; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {scalar_t__ mnt_root; } ;
struct mount {TYPE_2__ mnt; } ;
struct TYPE_3__ {struct super_block* mnt_sb; } ;


 int EINVAL ;
 int EPERM ;
 int can_change_locked_flags (struct mount*,unsigned int) ;
 int change_mount_ro_state (struct mount*,unsigned int) ;
 int check_mnt (struct mount*) ;
 int down_write (int *) ;
 int mnt_warn_timestamp_expiry (struct path*,TYPE_2__*) ;
 struct mount* real_mount (TYPE_1__*) ;
 int set_mount_attributes (struct mount*,unsigned int) ;
 int up_write (int *) ;

__attribute__((used)) static int do_reconfigure_mnt(struct path *path, unsigned int mnt_flags)
{
 struct super_block *sb = path->mnt->mnt_sb;
 struct mount *mnt = real_mount(path->mnt);
 int ret;

 if (!check_mnt(mnt))
  return -EINVAL;

 if (path->dentry != mnt->mnt.mnt_root)
  return -EINVAL;

 if (!can_change_locked_flags(mnt, mnt_flags))
  return -EPERM;

 down_write(&sb->s_umount);
 ret = change_mount_ro_state(mnt, mnt_flags);
 if (ret == 0)
  set_mount_attributes(mnt, mnt_flags);
 up_write(&sb->s_umount);

 mnt_warn_timestamp_expiry(path, &mnt->mnt);

 return ret;
}
