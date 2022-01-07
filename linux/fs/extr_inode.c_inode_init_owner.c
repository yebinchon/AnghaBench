
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_mode; int i_gid; int i_uid; } ;


 int CAP_FSETID ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 int S_IXGRP ;
 int capable_wrt_inode_uidgid (struct inode const*,int ) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int in_group_p (int ) ;

void inode_init_owner(struct inode *inode, const struct inode *dir,
   umode_t mode)
{
 inode->i_uid = current_fsuid();
 if (dir && dir->i_mode & S_ISGID) {
  inode->i_gid = dir->i_gid;


  if (S_ISDIR(mode))
   mode |= S_ISGID;
  else if ((mode & (S_ISGID | S_IXGRP)) == (S_ISGID | S_IXGRP) &&
    !in_group_p(inode->i_gid) &&
    !capable_wrt_inode_uidgid(dir, CAP_FSETID))
   mode &= ~S_ISGID;
 } else
  inode->i_gid = current_fsgid();
 inode->i_mode = mode;
}
