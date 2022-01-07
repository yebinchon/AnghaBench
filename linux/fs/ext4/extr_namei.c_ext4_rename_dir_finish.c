
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ext4_renament {TYPE_1__* dir; int inode; int dir_bh; int dir_inlined; TYPE_2__* parent_de; } ;
typedef int handle_t ;
struct TYPE_4__ {int inode; } ;
struct TYPE_3__ {int i_sb; } ;


 int BUFFER_TRACE (int ,char*) ;
 int cpu_to_le32 (unsigned int) ;
 int ext4_handle_dirty_dirblock (int *,int ,int ) ;
 int ext4_handle_dirty_dx_node (int *,int ,int ) ;
 int ext4_mark_inode_dirty (int *,int ) ;
 int ext4_std_error (int ,int) ;
 scalar_t__ is_dx (int ) ;

__attribute__((used)) static int ext4_rename_dir_finish(handle_t *handle, struct ext4_renament *ent,
      unsigned dir_ino)
{
 int retval;

 ent->parent_de->inode = cpu_to_le32(dir_ino);
 BUFFER_TRACE(ent->dir_bh, "call ext4_handle_dirty_metadata");
 if (!ent->dir_inlined) {
  if (is_dx(ent->inode)) {
   retval = ext4_handle_dirty_dx_node(handle,
          ent->inode,
          ent->dir_bh);
  } else {
   retval = ext4_handle_dirty_dirblock(handle, ent->inode,
           ent->dir_bh);
  }
 } else {
  retval = ext4_mark_inode_dirty(handle, ent->inode);
 }
 if (retval) {
  ext4_std_error(ent->dir->i_sb, retval);
  return retval;
 }
 return 0;
}
