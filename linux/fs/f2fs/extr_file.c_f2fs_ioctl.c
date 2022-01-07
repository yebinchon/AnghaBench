
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EIO ;
 long ENOSPC ;
 long ENOTTY ;
 int F2FS_I_SB (int ) ;
 int f2fs_cp_error (int ) ;
 long f2fs_get_volume_name (struct file*,unsigned long) ;
 long f2fs_ioc_abort_volatile_write (struct file*) ;
 long f2fs_ioc_add_encryption_key (struct file*,unsigned long) ;
 long f2fs_ioc_commit_atomic_write (struct file*) ;
 long f2fs_ioc_defragment (struct file*,unsigned long) ;
 long f2fs_ioc_enable_verity (struct file*,unsigned long) ;
 long f2fs_ioc_fitrim (struct file*,unsigned long) ;
 long f2fs_ioc_flush_device (struct file*,unsigned long) ;
 long f2fs_ioc_fsgetxattr (struct file*,unsigned long) ;
 long f2fs_ioc_fssetxattr (struct file*,unsigned long) ;
 long f2fs_ioc_gc (struct file*,unsigned long) ;
 long f2fs_ioc_gc_range (struct file*,unsigned long) ;
 long f2fs_ioc_get_encryption_key_status (struct file*,unsigned long) ;
 long f2fs_ioc_get_encryption_policy (struct file*,unsigned long) ;
 long f2fs_ioc_get_encryption_policy_ex (struct file*,unsigned long) ;
 long f2fs_ioc_get_encryption_pwsalt (struct file*,unsigned long) ;
 long f2fs_ioc_get_features (struct file*,unsigned long) ;
 long f2fs_ioc_get_pin_file (struct file*,unsigned long) ;
 long f2fs_ioc_getflags (struct file*,unsigned long) ;
 long f2fs_ioc_getversion (struct file*,unsigned long) ;
 long f2fs_ioc_measure_verity (struct file*,unsigned long) ;
 long f2fs_ioc_move_range (struct file*,unsigned long) ;
 long f2fs_ioc_precache_extents (struct file*,unsigned long) ;
 long f2fs_ioc_release_volatile_write (struct file*) ;
 long f2fs_ioc_remove_encryption_key (struct file*,unsigned long) ;
 long f2fs_ioc_remove_encryption_key_all_users (struct file*,unsigned long) ;
 long f2fs_ioc_resize_fs (struct file*,unsigned long) ;
 long f2fs_ioc_set_encryption_policy (struct file*,unsigned long) ;
 long f2fs_ioc_set_pin_file (struct file*,unsigned long) ;
 long f2fs_ioc_setflags (struct file*,unsigned long) ;
 long f2fs_ioc_shutdown (struct file*,unsigned long) ;
 long f2fs_ioc_start_atomic_write (struct file*) ;
 long f2fs_ioc_start_volatile_write (struct file*) ;
 long f2fs_ioc_write_checkpoint (struct file*,unsigned long) ;
 int f2fs_is_checkpoint_ready (int ) ;
 long f2fs_set_volume_name (struct file*,unsigned long) ;
 int file_inode (struct file*) ;
 scalar_t__ unlikely (int ) ;

long f2fs_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
 if (unlikely(f2fs_cp_error(F2FS_I_SB(file_inode(filp)))))
  return -EIO;
 if (!f2fs_is_checkpoint_ready(F2FS_I_SB(file_inode(filp))))
  return -ENOSPC;

 switch (cmd) {
 case 154:
  return f2fs_ioc_getflags(filp, arg);
 case 143:
  return f2fs_ioc_setflags(filp, arg);
 case 153:
  return f2fs_ioc_getversion(filp, arg);
 case 138:
  return f2fs_ioc_start_atomic_write(filp);
 case 161:
  return f2fs_ioc_commit_atomic_write(filp);
 case 137:
  return f2fs_ioc_start_volatile_write(filp);
 case 145:
  return f2fs_ioc_release_volatile_write(filp);
 case 162:
  return f2fs_ioc_abort_volatile_write(filp);
 case 139:
  return f2fs_ioc_shutdown(filp, arg);
 case 135:
  return f2fs_ioc_fitrim(filp, arg);
 case 142:
  return f2fs_ioc_set_encryption_policy(filp, arg);
 case 152:
  return f2fs_ioc_get_encryption_policy(filp, arg);
 case 151:
  return f2fs_ioc_get_encryption_pwsalt(filp, arg);
 case 131:
  return f2fs_ioc_get_encryption_policy_ex(filp, arg);
 case 134:
  return f2fs_ioc_add_encryption_key(filp, arg);
 case 129:
  return f2fs_ioc_remove_encryption_key(filp, arg);
 case 128:
  return f2fs_ioc_remove_encryption_key_all_users(filp, arg);
 case 132:
  return f2fs_ioc_get_encryption_key_status(filp, arg);
 case 156:
  return f2fs_ioc_gc(filp, arg);
 case 155:
  return f2fs_ioc_gc_range(filp, arg);
 case 136:
  return f2fs_ioc_write_checkpoint(filp, arg);
 case 160:
  return f2fs_ioc_defragment(filp, arg);
 case 147:
  return f2fs_ioc_move_range(filp, arg);
 case 159:
  return f2fs_ioc_flush_device(filp, arg);
 case 150:
  return f2fs_ioc_get_features(filp, arg);
 case 158:
  return f2fs_ioc_fsgetxattr(filp, arg);
 case 157:
  return f2fs_ioc_fssetxattr(filp, arg);
 case 149:
  return f2fs_ioc_get_pin_file(filp, arg);
 case 141:
  return f2fs_ioc_set_pin_file(filp, arg);
 case 146:
  return f2fs_ioc_precache_extents(filp, arg);
 case 144:
  return f2fs_ioc_resize_fs(filp, arg);
 case 133:
  return f2fs_ioc_enable_verity(filp, arg);
 case 130:
  return f2fs_ioc_measure_verity(filp, arg);
 case 148:
  return f2fs_get_volume_name(filp, arg);
 case 140:
  return f2fs_set_volume_name(filp, arg);
 default:
  return -ENOTTY;
 }
}
