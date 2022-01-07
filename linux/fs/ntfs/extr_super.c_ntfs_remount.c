
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_10__ {int vol_flags; int major_ver; int logfile_ino; } ;
typedef TYPE_1__ ntfs_volume ;


 int EINVAL ;
 int EROFS ;
 TYPE_1__* NTFS_SB (struct super_block*) ;
 scalar_t__ NVolErrors (TYPE_1__*) ;
 int NVolSetErrors (TYPE_1__*) ;
 int SB_RDONLY ;
 int VOLUME_IS_DIRTY ;
 int VOLUME_MODIFIED_BY_CHKDSK ;
 int VOLUME_MOUNTED_ON_NT4 ;
 int VOLUME_MUST_MOUNT_RO_MASK ;
 scalar_t__ le16_to_cpu (int) ;
 scalar_t__ ntfs_clear_volume_flags (TYPE_1__*,int) ;
 int ntfs_debug (char*,...) ;
 int ntfs_empty_logfile (int ) ;
 int ntfs_error (struct super_block*,char*,...) ;
 int ntfs_mark_quotas_out_of_date (TYPE_1__*) ;
 scalar_t__ ntfs_set_volume_flags (TYPE_1__*,int) ;
 int ntfs_stamp_usnjrnl (TYPE_1__*) ;
 int ntfs_warning (struct super_block*,char*) ;
 int parse_options (TYPE_1__*,char*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int ntfs_remount(struct super_block *sb, int *flags, char *opt)
{
 ntfs_volume *vol = NTFS_SB(sb);

 ntfs_debug("Entering with remount options string: %s", opt);

 sync_filesystem(sb);



 *flags |= SB_RDONLY;
 if (!parse_options(vol, opt))
  return -EINVAL;

 ntfs_debug("Done.");
 return 0;
}
