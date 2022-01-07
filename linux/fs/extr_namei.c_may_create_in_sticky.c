
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_uid; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mode; int i_uid; } ;


 int EACCES ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int S_ISVTX ;
 int current_fsuid () ;
 scalar_t__ likely (int) ;
 int sysctl_protected_fifos ;
 int sysctl_protected_regular ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int may_create_in_sticky(struct dentry * const dir,
    struct inode * const inode)
{
 if ((!sysctl_protected_fifos && S_ISFIFO(inode->i_mode)) ||
     (!sysctl_protected_regular && S_ISREG(inode->i_mode)) ||
     likely(!(dir->d_inode->i_mode & S_ISVTX)) ||
     uid_eq(inode->i_uid, dir->d_inode->i_uid) ||
     uid_eq(current_fsuid(), inode->i_uid))
  return 0;

 if (likely(dir->d_inode->i_mode & 0002) ||
     (dir->d_inode->i_mode & 0020 &&
      ((sysctl_protected_fifos >= 2 && S_ISFIFO(inode->i_mode)) ||
       (sysctl_protected_regular >= 2 && S_ISREG(inode->i_mode))))) {
  return -EACCES;
 }
 return 0;
}
