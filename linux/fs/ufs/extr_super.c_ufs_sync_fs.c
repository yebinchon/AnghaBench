
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_super_block_third {int dummy; } ;
struct ufs_super_block_first {int fs_time; } ;
struct ufs_sb_private_info {int dummy; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {unsigned int s_flags; int s_lock; struct ufs_sb_private_info* s_uspi; } ;


 int UFSD (char*) ;
 scalar_t__ UFS_FSOK ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 unsigned int UFS_ST_MASK ;
 unsigned int UFS_ST_SUN ;
 unsigned int UFS_ST_SUNOS ;
 unsigned int UFS_ST_SUNx86 ;
 scalar_t__ fs32_to_cpu (struct super_block*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ufs_super_block_first* ubh_get_usb_first (struct ufs_sb_private_info*) ;
 struct ufs_super_block_third* ubh_get_usb_third (struct ufs_sb_private_info*) ;
 int ufs_get_seconds (struct super_block*) ;
 int ufs_put_cstotal (struct super_block*) ;
 int ufs_set_fs_state (struct super_block*,struct ufs_super_block_first*,struct ufs_super_block_third*,scalar_t__) ;

__attribute__((used)) static int ufs_sync_fs(struct super_block *sb, int wait)
{
 struct ufs_sb_private_info * uspi;
 struct ufs_super_block_first * usb1;
 struct ufs_super_block_third * usb3;
 unsigned flags;

 mutex_lock(&UFS_SB(sb)->s_lock);

 UFSD("ENTER\n");

 flags = UFS_SB(sb)->s_flags;
 uspi = UFS_SB(sb)->s_uspi;
 usb1 = ubh_get_usb_first(uspi);
 usb3 = ubh_get_usb_third(uspi);

 usb1->fs_time = ufs_get_seconds(sb);
 if ((flags & UFS_ST_MASK) == UFS_ST_SUN ||
     (flags & UFS_ST_MASK) == UFS_ST_SUNOS ||
     (flags & UFS_ST_MASK) == UFS_ST_SUNx86)
  ufs_set_fs_state(sb, usb1, usb3,
    UFS_FSOK - fs32_to_cpu(sb, usb1->fs_time));
 ufs_put_cstotal(sb);

 UFSD("EXIT\n");
 mutex_unlock(&UFS_SB(sb)->s_lock);

 return 0;
}
