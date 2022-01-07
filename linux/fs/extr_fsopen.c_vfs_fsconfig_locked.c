
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_umount; int s_user_ns; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {int phase; TYPE_1__* root; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;


 int CAP_SYS_ADMIN ;
 int EBUSY ;
 int EPERM ;


 int FS_CONTEXT_AWAITING_MOUNT ;
 int FS_CONTEXT_CREATE_PARAMS ;
 int FS_CONTEXT_CREATING ;
 int FS_CONTEXT_FAILED ;
 int FS_CONTEXT_RECONFIGURING ;
 int FS_CONTEXT_RECONF_PARAMS ;
 int down_write (int *) ;
 int fc_drop_locked (struct fs_context*) ;
 int finish_clean_context (struct fs_context*) ;
 int mount_capable (struct fs_context*) ;
 int ns_capable (int ,int ) ;
 int reconfigure_super (struct fs_context*) ;
 int security_sb_kern_mount (struct super_block*) ;
 int unlikely (int) ;
 int up_write (int *) ;
 int vfs_clean_context (struct fs_context*) ;
 int vfs_get_tree (struct fs_context*) ;
 int vfs_parse_fs_param (struct fs_context*,struct fs_parameter*) ;

__attribute__((used)) static int vfs_fsconfig_locked(struct fs_context *fc, int cmd,
          struct fs_parameter *param)
{
 struct super_block *sb;
 int ret;

 ret = finish_clean_context(fc);
 if (ret)
  return ret;
 switch (cmd) {
 case 129:
  if (fc->phase != FS_CONTEXT_CREATE_PARAMS)
   return -EBUSY;
  if (!mount_capable(fc))
   return -EPERM;
  fc->phase = FS_CONTEXT_CREATING;
  ret = vfs_get_tree(fc);
  if (ret)
   break;
  sb = fc->root->d_sb;
  ret = security_sb_kern_mount(sb);
  if (unlikely(ret)) {
   fc_drop_locked(fc);
   break;
  }
  up_write(&sb->s_umount);
  fc->phase = FS_CONTEXT_AWAITING_MOUNT;
  return 0;
 case 128:
  if (fc->phase != FS_CONTEXT_RECONF_PARAMS)
   return -EBUSY;
  fc->phase = FS_CONTEXT_RECONFIGURING;
  sb = fc->root->d_sb;
  if (!ns_capable(sb->s_user_ns, CAP_SYS_ADMIN)) {
   ret = -EPERM;
   break;
  }
  down_write(&sb->s_umount);
  ret = reconfigure_super(fc);
  up_write(&sb->s_umount);
  if (ret)
   break;
  vfs_clean_context(fc);
  return 0;
 default:
  if (fc->phase != FS_CONTEXT_CREATE_PARAMS &&
      fc->phase != FS_CONTEXT_RECONF_PARAMS)
   return -EBUSY;

  return vfs_parse_fs_param(fc, param);
 }
 fc->phase = FS_CONTEXT_FAILED;
 return ret;
}
