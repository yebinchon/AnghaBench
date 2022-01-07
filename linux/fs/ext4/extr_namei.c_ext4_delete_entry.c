
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;
struct TYPE_3__ {int s_blocksize; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int ENOENT ;
 int ext4_delete_inline_entry (int *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,int*) ;
 int ext4_generic_delete_entry (int *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,int ,int ,int) ;
 int ext4_handle_dirty_dirblock (int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 scalar_t__ ext4_has_metadata_csum (TYPE_1__*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_std_error (TYPE_1__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ext4_delete_entry(handle_t *handle,
        struct inode *dir,
        struct ext4_dir_entry_2 *de_del,
        struct buffer_head *bh)
{
 int err, csum_size = 0;

 if (ext4_has_inline_data(dir)) {
  int has_inline_data = 1;
  err = ext4_delete_inline_entry(handle, dir, de_del, bh,
            &has_inline_data);
  if (has_inline_data)
   return err;
 }

 if (ext4_has_metadata_csum(dir->i_sb))
  csum_size = sizeof(struct ext4_dir_entry_tail);

 BUFFER_TRACE(bh, "get_write_access");
 err = ext4_journal_get_write_access(handle, bh);
 if (unlikely(err))
  goto out;

 err = ext4_generic_delete_entry(handle, dir, de_del,
     bh, bh->b_data,
     dir->i_sb->s_blocksize, csum_size);
 if (err)
  goto out;

 BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
 err = ext4_handle_dirty_dirblock(handle, dir, bh);
 if (unlikely(err))
  goto out;

 return 0;
out:
 if (err != -ENOENT)
  ext4_std_error(dir->i_sb, err);
 return err;
}
