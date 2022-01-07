
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int i_flags; } ;


 unsigned int FS_APPEND_FL ;
 unsigned int FS_DIRSYNC_FL ;
 unsigned int FS_IMMUTABLE_FL ;
 unsigned int FS_NOATIME_FL ;
 unsigned int FS_SYNC_FL ;
 TYPE_1__* NILFS_I (struct inode*) ;
 unsigned int S_APPEND ;
 unsigned int S_DIRSYNC ;
 unsigned int S_IMMUTABLE ;
 unsigned int S_NOATIME ;
 unsigned int S_SYNC ;
 int inode_set_flags (struct inode*,unsigned int,unsigned int) ;

void nilfs_set_inode_flags(struct inode *inode)
{
 unsigned int flags = NILFS_I(inode)->i_flags;
 unsigned int new_fl = 0;

 if (flags & FS_SYNC_FL)
  new_fl |= S_SYNC;
 if (flags & FS_APPEND_FL)
  new_fl |= S_APPEND;
 if (flags & FS_IMMUTABLE_FL)
  new_fl |= S_IMMUTABLE;
 if (flags & FS_NOATIME_FL)
  new_fl |= S_NOATIME;
 if (flags & FS_DIRSYNC_FL)
  new_fl |= S_DIRSYNC;
 inode_set_flags(inode, new_fl, S_SYNC | S_APPEND | S_IMMUTABLE |
   S_NOATIME | S_DIRSYNC);
}
