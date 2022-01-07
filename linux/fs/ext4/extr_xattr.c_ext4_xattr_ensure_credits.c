
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_8__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 int ext4_handle_dirty_metadata (TYPE_1__*,int *,struct buffer_head*) ;
 int ext4_handle_valid (TYPE_1__*) ;
 int ext4_journal_extend (TYPE_1__*,int) ;
 int ext4_journal_get_write_access (TYPE_1__*,struct buffer_head*) ;
 int ext4_journal_restart (TYPE_1__*,int) ;
 int ext4_warning (int ,char*,int) ;
 int ext4_xattr_block_csum_set (struct inode*,struct buffer_head*) ;

__attribute__((used)) static int ext4_xattr_ensure_credits(handle_t *handle, struct inode *inode,
         int credits, struct buffer_head *bh,
         bool dirty, bool block_csum)
{
 int error;

 if (!ext4_handle_valid(handle))
  return 0;

 if (handle->h_buffer_credits >= credits)
  return 0;

 error = ext4_journal_extend(handle, credits - handle->h_buffer_credits);
 if (!error)
  return 0;
 if (error < 0) {
  ext4_warning(inode->i_sb, "Extend journal (error %d)", error);
  return error;
 }

 if (bh && dirty) {
  if (block_csum)
   ext4_xattr_block_csum_set(inode, bh);
  error = ext4_handle_dirty_metadata(handle, ((void*)0), bh);
  if (error) {
   ext4_warning(inode->i_sb, "Handle metadata (error %d)",
         error);
   return error;
  }
 }

 error = ext4_journal_restart(handle, credits);
 if (error) {
  ext4_warning(inode->i_sb, "Restart journal (error %d)", error);
  return error;
 }

 if (bh) {
  error = ext4_journal_get_write_access(handle, bh);
  if (error) {
   ext4_warning(inode->i_sb,
         "Get write access failed (error %d)",
         error);
   return error;
  }
 }
 return 0;
}
