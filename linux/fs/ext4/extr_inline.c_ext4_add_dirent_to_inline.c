
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; } ;
struct ext4_iloc {int bh; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
typedef int handle_t ;


 int BUFFER_TRACE (int ,char*) ;
 int current_time (struct inode*) ;
 int ext4_find_dest_de (struct inode*,struct inode*,int ,void*,int,struct ext4_filename*,struct ext4_dir_entry_2**) ;
 int ext4_insert_dentry (struct inode*,struct ext4_dir_entry_2*,int,struct ext4_filename*) ;
 int ext4_journal_get_write_access (int *,int ) ;
 int ext4_show_inline_dir (struct inode*,int ,void*,int) ;
 int ext4_update_dx_flag (struct inode*) ;
 int inode_inc_iversion (struct inode*) ;

__attribute__((used)) static int ext4_add_dirent_to_inline(handle_t *handle,
         struct ext4_filename *fname,
         struct inode *dir,
         struct inode *inode,
         struct ext4_iloc *iloc,
         void *inline_start, int inline_size)
{
 int err;
 struct ext4_dir_entry_2 *de;

 err = ext4_find_dest_de(dir, inode, iloc->bh, inline_start,
    inline_size, fname, &de);
 if (err)
  return err;

 BUFFER_TRACE(iloc->bh, "get_write_access");
 err = ext4_journal_get_write_access(handle, iloc->bh);
 if (err)
  return err;
 ext4_insert_dentry(inode, de, inline_size, fname);

 ext4_show_inline_dir(dir, iloc->bh, inline_start, inline_size);
 dir->i_mtime = dir->i_ctime = current_time(dir);
 ext4_update_dx_flag(dir);
 inode_inc_iversion(dir);
 return 1;
}
