
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_state; int i_size; int i_ctime; int i_mtime; scalar_t__ i_nlink; TYPE_1__* i_sb; struct address_space* i_mapping; } ;
struct ext4_inode_info {int i_data_sem; } ;
struct address_space {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int s_blocksize; } ;


 int EXT4_HT_TRUNCATE ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int EXT4_INODE_EOFBLOCKS ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_STATE_DA_ALLOC_CLOSE ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int I_FREEING ;
 int I_NEW ;
 int NO_AUTO_DA_ALLOC ;
 int PTR_ERR (int *) ;
 int WARN_ON (int) ;
 int current_time (struct inode*) ;
 int down_write (int *) ;
 int ext4_block_truncate_page (int *,struct address_space*,int) ;
 unsigned int ext4_blocks_for_truncate (struct inode*) ;
 int ext4_can_truncate (struct inode*) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_ext_truncate (int *,struct inode*) ;
 int ext4_handle_sync (int *) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 int ext4_ind_truncate (int *,struct inode*) ;
 int ext4_inline_data_truncate (struct inode*,int*) ;
 scalar_t__ ext4_inode_attach_jinode (struct inode*) ;
 int * ext4_journal_start (struct inode*,int ,unsigned int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 unsigned int ext4_writepage_trans_blocks (struct inode*) ;
 int inode_is_locked (struct inode*) ;
 int test_opt (TYPE_1__*,int ) ;
 int trace_ext4_truncate_enter (struct inode*) ;
 int trace_ext4_truncate_exit (struct inode*) ;
 int up_write (int *) ;

int ext4_truncate(struct inode *inode)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 unsigned int credits;
 int err = 0;
 handle_t *handle;
 struct address_space *mapping = inode->i_mapping;






 if (!(inode->i_state & (I_NEW|I_FREEING)))
  WARN_ON(!inode_is_locked(inode));
 trace_ext4_truncate_enter(inode);

 if (!ext4_can_truncate(inode))
  return 0;

 ext4_clear_inode_flag(inode, EXT4_INODE_EOFBLOCKS);

 if (inode->i_size == 0 && !test_opt(inode->i_sb, NO_AUTO_DA_ALLOC))
  ext4_set_inode_state(inode, EXT4_STATE_DA_ALLOC_CLOSE);

 if (ext4_has_inline_data(inode)) {
  int has_inline = 1;

  err = ext4_inline_data_truncate(inode, &has_inline);
  if (err)
   return err;
  if (has_inline)
   return 0;
 }


 if (inode->i_size & (inode->i_sb->s_blocksize - 1)) {
  if (ext4_inode_attach_jinode(inode) < 0)
   return 0;
 }

 if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))
  credits = ext4_writepage_trans_blocks(inode);
 else
  credits = ext4_blocks_for_truncate(inode);

 handle = ext4_journal_start(inode, EXT4_HT_TRUNCATE, credits);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 if (inode->i_size & (inode->i_sb->s_blocksize - 1))
  ext4_block_truncate_page(handle, mapping, inode->i_size);
 err = ext4_orphan_add(handle, inode);
 if (err)
  goto out_stop;

 down_write(&EXT4_I(inode)->i_data_sem);

 ext4_discard_preallocations(inode);

 if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))
  err = ext4_ext_truncate(handle, inode);
 else
  ext4_ind_truncate(handle, inode);

 up_write(&ei->i_data_sem);
 if (err)
  goto out_stop;

 if (IS_SYNC(inode))
  ext4_handle_sync(handle);

out_stop:







 if (inode->i_nlink)
  ext4_orphan_del(handle, inode);

 inode->i_mtime = inode->i_ctime = current_time(inode);
 ext4_mark_inode_dirty(handle, inode);
 ext4_journal_stop(handle);

 trace_ext4_truncate_exit(inode);
 return err;
}
