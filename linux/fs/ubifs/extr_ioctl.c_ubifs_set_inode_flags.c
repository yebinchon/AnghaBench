
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; } ;
struct TYPE_2__ {unsigned int flags; } ;


 int S_APPEND ;
 int S_DIRSYNC ;
 int S_ENCRYPTED ;
 int S_IMMUTABLE ;
 int S_SYNC ;
 unsigned int UBIFS_APPEND_FL ;
 unsigned int UBIFS_CRYPT_FL ;
 unsigned int UBIFS_DIRSYNC_FL ;
 unsigned int UBIFS_IMMUTABLE_FL ;
 unsigned int UBIFS_SYNC_FL ;
 TYPE_1__* ubifs_inode (struct inode*) ;

void ubifs_set_inode_flags(struct inode *inode)
{
 unsigned int flags = ubifs_inode(inode)->flags;

 inode->i_flags &= ~(S_SYNC | S_APPEND | S_IMMUTABLE | S_DIRSYNC |
       S_ENCRYPTED);
 if (flags & UBIFS_SYNC_FL)
  inode->i_flags |= S_SYNC;
 if (flags & UBIFS_APPEND_FL)
  inode->i_flags |= S_APPEND;
 if (flags & UBIFS_IMMUTABLE_FL)
  inode->i_flags |= S_IMMUTABLE;
 if (flags & UBIFS_DIRSYNC_FL)
  inode->i_flags |= S_DIRSYNC;
 if (flags & UBIFS_CRYPT_FL)
  inode->i_flags |= S_ENCRYPTED;
}
