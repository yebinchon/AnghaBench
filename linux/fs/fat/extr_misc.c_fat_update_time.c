
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct inode {scalar_t__ i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_flags; } ;


 int I_DIRTY_SYNC ;
 int I_DIRTY_TIME ;
 scalar_t__ MSDOS_ROOT_INO ;
 int SB_LAZYTIME ;
 int S_ATIME ;
 int S_CTIME ;
 int S_MTIME ;
 int S_VERSION ;
 int __mark_inode_dirty (struct inode*,int) ;
 int fat_truncate_time (struct inode*,struct timespec64*,int) ;
 int inode_maybe_inc_iversion (struct inode*,int) ;

int fat_update_time(struct inode *inode, struct timespec64 *now, int flags)
{
 int iflags = I_DIRTY_TIME;
 bool dirty = 0;

 if (inode->i_ino == MSDOS_ROOT_INO)
  return 0;

 fat_truncate_time(inode, now, flags);
 if (flags & S_VERSION)
  dirty = inode_maybe_inc_iversion(inode, 0);
 if ((flags & (S_ATIME | S_CTIME | S_MTIME)) &&
     !(inode->i_sb->s_flags & SB_LAZYTIME))
  dirty = 1;

 if (dirty)
  iflags |= I_DIRTY_SYNC;
 __mark_inode_dirty(inode, iflags);
 return 0;
}
