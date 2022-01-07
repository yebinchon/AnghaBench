
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_2__ {int fs_fmask; int fs_dmask; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct inode {int i_mode; } ;


 int EPERM ;
 int S_IFMT ;
 int S_IRUGO ;
 scalar_t__ S_ISREG (int) ;
 int S_IWUGO ;
 int S_IXUGO ;
 scalar_t__ fat_mode_can_hold_ro (struct inode*) ;

__attribute__((used)) static int fat_sanitize_mode(const struct msdos_sb_info *sbi,
        struct inode *inode, umode_t *mode_ptr)
{
 umode_t mask, perm;






 if (S_ISREG(inode->i_mode))
  mask = sbi->options.fs_fmask;
 else
  mask = sbi->options.fs_dmask;

 perm = *mode_ptr & ~(S_IFMT | mask);







 if ((perm & (S_IRUGO | S_IXUGO)) != (inode->i_mode & (S_IRUGO|S_IXUGO)))
  return -EPERM;
 if (fat_mode_can_hold_ro(inode)) {
  if ((perm & S_IWUGO) && ((perm & S_IWUGO) != (S_IWUGO & ~mask)))
   return -EPERM;
 } else {
  if ((perm & S_IWUGO) != (S_IWUGO & ~mask))
   return -EPERM;
 }

 *mode_ptr &= S_IFMT | perm;

 return 0;
}
