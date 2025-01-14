
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_mode; } ;


 int ATTR_KILL_SGID ;
 int ATTR_KILL_SUID ;
 int S_ISGID ;
 scalar_t__ S_ISREG (int) ;
 int S_ISUID ;
 int S_IXGRP ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nfs_should_remove_suid(const struct inode *inode)
{
 umode_t mode = inode->i_mode;
 int kill = 0;


 if (unlikely(mode & S_ISUID))
  kill = ATTR_KILL_SUID;





 if (unlikely((mode & S_ISGID) && (mode & S_IXGRP)))
  kill |= ATTR_KILL_SGID;

 if (unlikely(kill && S_ISREG(mode)))
  return kill;

 return 0;
}
