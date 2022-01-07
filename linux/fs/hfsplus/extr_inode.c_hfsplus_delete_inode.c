
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {scalar_t__ i_size; int i_mode; int i_nlink; struct super_block* i_sb; } ;
struct TYPE_2__ {int file_count; int folder_count; } ;


 TYPE_1__* HFSPLUS_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int hfsplus_file_truncate (struct inode*) ;
 int hfsplus_mark_mdb_dirty (struct super_block*) ;

void hfsplus_delete_inode(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;

 if (S_ISDIR(inode->i_mode)) {
  HFSPLUS_SB(sb)->folder_count--;
  hfsplus_mark_mdb_dirty(sb);
  return;
 }
 HFSPLUS_SB(sb)->file_count--;
 if (S_ISREG(inode->i_mode)) {
  if (!inode->i_nlink) {
   inode->i_size = 0;
   hfsplus_file_truncate(inode);
  }
 } else if (S_ISLNK(inode->i_mode)) {
  inode->i_size = 0;
  hfsplus_file_truncate(inode);
 }
 hfsplus_mark_mdb_dirty(sb);
}
