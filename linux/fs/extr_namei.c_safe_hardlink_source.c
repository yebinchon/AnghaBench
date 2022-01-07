
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_mode; } ;


 int MAY_READ ;
 int MAY_WRITE ;
 int S_ISGID ;
 int S_ISREG (int) ;
 int S_ISUID ;
 int S_IXGRP ;
 scalar_t__ inode_permission (struct inode*,int) ;

__attribute__((used)) static bool safe_hardlink_source(struct inode *inode)
{
 umode_t mode = inode->i_mode;


 if (!S_ISREG(mode))
  return 0;


 if (mode & S_ISUID)
  return 0;


 if ((mode & (S_ISGID | S_IXGRP)) == (S_ISGID | S_IXGRP))
  return 0;


 if (inode_permission(inode, MAY_READ | MAY_WRITE))
  return 0;

 return 1;
}
