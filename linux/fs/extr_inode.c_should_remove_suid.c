
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;


 int ATTR_KILL_SGID ;
 int ATTR_KILL_SUID ;
 int CAP_FSETID ;
 int S_ISGID ;
 scalar_t__ S_ISREG (int) ;
 int S_ISUID ;
 int S_IXGRP ;
 int capable (int ) ;
 TYPE_1__* d_inode (struct dentry*) ;
 scalar_t__ unlikely (int) ;

int should_remove_suid(struct dentry *dentry)
{
 umode_t mode = d_inode(dentry)->i_mode;
 int kill = 0;


 if (unlikely(mode & S_ISUID))
  kill = ATTR_KILL_SUID;





 if (unlikely((mode & S_ISGID) && (mode & S_IXGRP)))
  kill |= ATTR_KILL_SGID;

 if (unlikely(kill && !capable(CAP_FSETID) && S_ISREG(mode)))
  return kill;

 return 0;
}
