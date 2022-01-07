
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_ctime; int i_mtime; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;
struct TYPE_3__ {unsigned int s_blocksize; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int current_time (struct inode*) ;
 int ext4_find_dest_de (struct inode*,struct inode*,struct buffer_head*,int ,unsigned int,struct ext4_filename*,struct ext4_dir_entry_2**) ;
 int ext4_handle_dirty_dirblock (int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_has_metadata_csum (TYPE_1__*) ;
 int ext4_insert_dentry (struct inode*,struct ext4_dir_entry_2*,unsigned int,struct ext4_filename*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_std_error (TYPE_1__*,int) ;
 int ext4_update_dx_flag (struct inode*) ;
 int inode_inc_iversion (struct inode*) ;

__attribute__((used)) static int add_dirent_to_buf(handle_t *handle, struct ext4_filename *fname,
        struct inode *dir,
        struct inode *inode, struct ext4_dir_entry_2 *de,
        struct buffer_head *bh)
{
 unsigned int blocksize = dir->i_sb->s_blocksize;
 int csum_size = 0;
 int err;

 if (ext4_has_metadata_csum(inode->i_sb))
  csum_size = sizeof(struct ext4_dir_entry_tail);

 if (!de) {
  err = ext4_find_dest_de(dir, inode, bh, bh->b_data,
     blocksize - csum_size, fname, &de);
  if (err)
   return err;
 }
 BUFFER_TRACE(bh, "get_write_access");
 err = ext4_journal_get_write_access(handle, bh);
 if (err) {
  ext4_std_error(dir->i_sb, err);
  return err;
 }


 ext4_insert_dentry(inode, de, blocksize, fname);
 dir->i_mtime = dir->i_ctime = current_time(dir);
 ext4_update_dx_flag(dir);
 inode_inc_iversion(dir);
 ext4_mark_inode_dirty(handle, dir);
 BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
 err = ext4_handle_dirty_dirblock(handle, dir, bh);
 if (err)
  ext4_std_error(dir->i_sb, err);
 return 0;
}
