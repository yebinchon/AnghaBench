
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_renament {int dir_nlink_delta; int dir; } ;
typedef int handle_t ;


 int ext4_dec_count (int *,int ) ;
 int ext4_inc_count (int *,int ) ;
 int ext4_mark_inode_dirty (int *,int ) ;

__attribute__((used)) static void ext4_update_dir_count(handle_t *handle, struct ext4_renament *ent)
{
 if (ent->dir_nlink_delta) {
  if (ent->dir_nlink_delta == -1)
   ext4_dec_count(handle, ent->dir);
  else
   ext4_inc_count(handle, ent->dir);
  ext4_mark_inode_dirty(handle, ent->dir);
 }
}
