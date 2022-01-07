
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_umount; int s_user_ns; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct mount {int mnt; } ;
struct fs_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ mnt_root; struct super_block* mnt_sb; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct fs_context*) ;
 int MS_RMT_MASK ;
 int PTR_ERR (struct fs_context*) ;
 int can_change_locked_flags (struct mount*,int) ;
 int check_mnt (struct mount*) ;
 int down_write (int *) ;
 struct fs_context* fs_context_for_reconfigure (scalar_t__,int,int ) ;
 int mnt_warn_timestamp_expiry (struct path*,int *) ;
 scalar_t__ ns_capable (int ,int ) ;
 int parse_monolithic_mount_data (struct fs_context*,void*) ;
 int put_fs_context (struct fs_context*) ;
 struct mount* real_mount (TYPE_1__*) ;
 int reconfigure_super (struct fs_context*) ;
 int set_mount_attributes (struct mount*,int) ;
 int up_write (int *) ;

__attribute__((used)) static int do_remount(struct path *path, int ms_flags, int sb_flags,
        int mnt_flags, void *data)
{
 int err;
 struct super_block *sb = path->mnt->mnt_sb;
 struct mount *mnt = real_mount(path->mnt);
 struct fs_context *fc;

 if (!check_mnt(mnt))
  return -EINVAL;

 if (path->dentry != path->mnt->mnt_root)
  return -EINVAL;

 if (!can_change_locked_flags(mnt, mnt_flags))
  return -EPERM;

 fc = fs_context_for_reconfigure(path->dentry, sb_flags, MS_RMT_MASK);
 if (IS_ERR(fc))
  return PTR_ERR(fc);

 err = parse_monolithic_mount_data(fc, data);
 if (!err) {
  down_write(&sb->s_umount);
  err = -EPERM;
  if (ns_capable(sb->s_user_ns, CAP_SYS_ADMIN)) {
   err = reconfigure_super(fc);
   if (!err)
    set_mount_attributes(mnt, mnt_flags);
  }
  up_write(&sb->s_umount);
 }

 mnt_warn_timestamp_expiry(path, &mnt->mnt);

 put_fs_context(fc);
 return err;
}
