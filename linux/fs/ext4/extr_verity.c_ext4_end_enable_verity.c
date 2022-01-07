
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_mapping; } ;
struct file {int dummy; } ;
struct ext4_iloc {int dummy; } ;
typedef int handle_t ;


 int EXT4_HT_INODE ;
 int EXT4_INODE_VERITY ;
 int EXT4_STATE_VERITY_IN_PROGRESS ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int * ext4_journal_start (struct inode*,int ,int const) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_iloc_dirty (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_reserve_inode_write (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_set_inode_flag (struct inode*,int ) ;
 int ext4_set_inode_flags (struct inode*) ;
 int ext4_truncate (struct inode*) ;
 int ext4_write_verity_descriptor (struct inode*,void const*,size_t,int ) ;
 struct inode* file_inode (struct file*) ;
 int filemap_write_and_wait (int ) ;

__attribute__((used)) static int ext4_end_enable_verity(struct file *filp, const void *desc,
      size_t desc_size, u64 merkle_tree_size)
{
 struct inode *inode = file_inode(filp);
 const int credits = 2;
 handle_t *handle;
 int err = 0;
 int err2;

 if (desc != ((void*)0)) {

  err = ext4_write_verity_descriptor(inode, desc, desc_size,
         merkle_tree_size);


  if (!err)
   err = filemap_write_and_wait(inode->i_mapping);
 }


 if (desc == ((void*)0) || err)
  ext4_truncate(inode);
 ext4_clear_inode_state(inode, EXT4_STATE_VERITY_IN_PROGRESS);

 handle = ext4_journal_start(inode, EXT4_HT_INODE, credits);
 if (IS_ERR(handle)) {
  ext4_orphan_del(((void*)0), inode);
  return PTR_ERR(handle);
 }

 err2 = ext4_orphan_del(handle, inode);
 if (err2)
  goto out_stop;

 if (desc != ((void*)0) && !err) {
  struct ext4_iloc iloc;

  err = ext4_reserve_inode_write(handle, inode, &iloc);
  if (err)
   goto out_stop;
  ext4_set_inode_flag(inode, EXT4_INODE_VERITY);
  ext4_set_inode_flags(inode);
  err = ext4_mark_iloc_dirty(handle, inode, &iloc);
 }
out_stop:
 ext4_journal_stop(handle);
 return err ?: err2;
}
