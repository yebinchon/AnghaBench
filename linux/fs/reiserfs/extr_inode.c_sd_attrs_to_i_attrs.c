
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; int i_sb; } ;
typedef int __u16 ;
struct TYPE_2__ {int i_flags; } ;


 int REISERFS_APPEND_FL ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 int REISERFS_IMMUTABLE_FL ;
 int REISERFS_NOATIME_FL ;
 int REISERFS_NOTAIL_FL ;
 int REISERFS_SYNC_FL ;
 int S_APPEND ;
 int S_IMMUTABLE ;
 int S_NOATIME ;
 int S_SYNC ;
 int i_nopack_mask ;
 scalar_t__ reiserfs_attrs (int ) ;

void sd_attrs_to_i_attrs(__u16 sd_attrs, struct inode *inode)
{
 if (reiserfs_attrs(inode->i_sb)) {
  if (sd_attrs & REISERFS_SYNC_FL)
   inode->i_flags |= S_SYNC;
  else
   inode->i_flags &= ~S_SYNC;
  if (sd_attrs & REISERFS_IMMUTABLE_FL)
   inode->i_flags |= S_IMMUTABLE;
  else
   inode->i_flags &= ~S_IMMUTABLE;
  if (sd_attrs & REISERFS_APPEND_FL)
   inode->i_flags |= S_APPEND;
  else
   inode->i_flags &= ~S_APPEND;
  if (sd_attrs & REISERFS_NOATIME_FL)
   inode->i_flags |= S_NOATIME;
  else
   inode->i_flags &= ~S_NOATIME;
  if (sd_attrs & REISERFS_NOTAIL_FL)
   REISERFS_I(inode)->i_flags |= i_nopack_mask;
  else
   REISERFS_I(inode)->i_flags &= ~i_nopack_mask;
 }
}
