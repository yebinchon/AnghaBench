
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; int i_mode; int i_sb; } ;
struct TYPE_2__ {unsigned int i_flags; } ;


 int DAX ;
 unsigned int EXT2_APPEND_FL ;
 unsigned int EXT2_DIRSYNC_FL ;
 TYPE_1__* EXT2_I (struct inode*) ;
 unsigned int EXT2_IMMUTABLE_FL ;
 unsigned int EXT2_NOATIME_FL ;
 unsigned int EXT2_SYNC_FL ;
 int S_APPEND ;
 int S_DAX ;
 int S_DIRSYNC ;
 int S_IMMUTABLE ;
 scalar_t__ S_ISREG (int ) ;
 int S_NOATIME ;
 int S_SYNC ;
 scalar_t__ test_opt (int ,int ) ;

void ext2_set_inode_flags(struct inode *inode)
{
 unsigned int flags = EXT2_I(inode)->i_flags;

 inode->i_flags &= ~(S_SYNC | S_APPEND | S_IMMUTABLE | S_NOATIME |
    S_DIRSYNC | S_DAX);
 if (flags & EXT2_SYNC_FL)
  inode->i_flags |= S_SYNC;
 if (flags & EXT2_APPEND_FL)
  inode->i_flags |= S_APPEND;
 if (flags & EXT2_IMMUTABLE_FL)
  inode->i_flags |= S_IMMUTABLE;
 if (flags & EXT2_NOATIME_FL)
  inode->i_flags |= S_NOATIME;
 if (flags & EXT2_DIRSYNC_FL)
  inode->i_flags |= S_DIRSYNC;
 if (test_opt(inode->i_sb, DAX) && S_ISREG(inode->i_mode))
  inode->i_flags |= S_DAX;
}
