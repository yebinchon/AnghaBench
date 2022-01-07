
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; } ;
struct TYPE_2__ {unsigned int ip_attr; } ;


 unsigned int OCFS2_APPEND_FL ;
 unsigned int OCFS2_DIRSYNC_FL ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 unsigned int OCFS2_IMMUTABLE_FL ;
 unsigned int OCFS2_NOATIME_FL ;
 unsigned int OCFS2_SYNC_FL ;
 int S_APPEND ;
 int S_DIRSYNC ;
 int S_IMMUTABLE ;
 int S_NOATIME ;
 int S_SYNC ;

void ocfs2_set_inode_flags(struct inode *inode)
{
 unsigned int flags = OCFS2_I(inode)->ip_attr;

 inode->i_flags &= ~(S_IMMUTABLE |
  S_SYNC | S_APPEND | S_NOATIME | S_DIRSYNC);

 if (flags & OCFS2_IMMUTABLE_FL)
  inode->i_flags |= S_IMMUTABLE;

 if (flags & OCFS2_SYNC_FL)
  inode->i_flags |= S_SYNC;
 if (flags & OCFS2_APPEND_FL)
  inode->i_flags |= S_APPEND;
 if (flags & OCFS2_NOATIME_FL)
  inode->i_flags |= S_NOATIME;
 if (flags & OCFS2_DIRSYNC_FL)
  inode->i_flags |= S_DIRSYNC;
}
