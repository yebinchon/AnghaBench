
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_5__ {scalar_t__ nrpages; } ;
struct inode {scalar_t__ i_ino; int i_sb; scalar_t__ i_blocks; scalar_t__ i_size; TYPE_1__ i_data; int i_mode; scalar_t__ i_nlink; } ;
struct ext4_xattr_inode_array {int dummy; } ;
typedef int journal_t ;
typedef int handle_t ;
typedef scalar_t__ __u32 ;
struct TYPE_7__ {scalar_t__ i_dtime; int i_data; int i_datasync_tid; } ;
struct TYPE_6__ {int * s_journal; } ;


 int EXT4_HT_TRUNCATE ;
 TYPE_4__* EXT4_I (struct inode*) ;
 scalar_t__ EXT4_JOURNAL_INO ;
 scalar_t__ EXT4_MAXQUOTAS_DEL_BLOCKS (int ) ;
 TYPE_3__* EXT4_SB (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int IS_NOQUOTA (struct inode*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int PTR_ERR (int *) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int dquot_initialize (struct inode*) ;
 int ext4_begin_ordered_truncate (struct inode*,int ) ;
 scalar_t__ ext4_blocks_for_truncate (struct inode*) ;
 int ext4_clear_inode (struct inode*) ;
 int ext4_error (int ,char*,scalar_t__,int) ;
 int ext4_free_inode (int *,struct inode*) ;
 int ext4_handle_sync (int *) ;
 scalar_t__ ext4_inode_is_fast_symlink (struct inode*) ;
 int * ext4_journal_start (struct inode*,int ,scalar_t__) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_order_data (struct inode*) ;
 int ext4_std_error (int ,int ) ;
 int ext4_truncate (struct inode*) ;
 int ext4_warning (int ,char*,int) ;
 int ext4_xattr_delete_inode (int *,struct inode*,struct ext4_xattr_inode_array**,int) ;
 int ext4_xattr_inode_array_free (struct ext4_xattr_inode_array*) ;
 int filemap_write_and_wait (TYPE_1__*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int jbd2_complete_transaction (int *,int ) ;
 scalar_t__ ktime_get_real_seconds () ;
 int memset (int ,int ,int) ;
 int sb_end_intwrite (int ) ;
 int sb_start_intwrite (int ) ;
 int trace_ext4_evict_inode (struct inode*) ;
 int truncate_inode_pages_final (TYPE_1__*) ;

void ext4_evict_inode(struct inode *inode)
{
 handle_t *handle;
 int err;
 int extra_credits = 3;
 struct ext4_xattr_inode_array *ea_inode_array = ((void*)0);

 trace_ext4_evict_inode(inode);

 if (inode->i_nlink) {
  if (inode->i_ino != EXT4_JOURNAL_INO &&
      ext4_should_journal_data(inode) &&
      (S_ISLNK(inode->i_mode) || S_ISREG(inode->i_mode)) &&
      inode->i_data.nrpages) {
   journal_t *journal = EXT4_SB(inode->i_sb)->s_journal;
   tid_t commit_tid = EXT4_I(inode)->i_datasync_tid;

   jbd2_complete_transaction(journal, commit_tid);
   filemap_write_and_wait(&inode->i_data);
  }
  truncate_inode_pages_final(&inode->i_data);

  goto no_delete;
 }

 if (is_bad_inode(inode))
  goto no_delete;
 dquot_initialize(inode);

 if (ext4_should_order_data(inode))
  ext4_begin_ordered_truncate(inode, 0);
 truncate_inode_pages_final(&inode->i_data);





 sb_start_intwrite(inode->i_sb);

 if (!IS_NOQUOTA(inode))
  extra_credits += EXT4_MAXQUOTAS_DEL_BLOCKS(inode->i_sb);

 handle = ext4_journal_start(inode, EXT4_HT_TRUNCATE,
     ext4_blocks_for_truncate(inode)+extra_credits);
 if (IS_ERR(handle)) {
  ext4_std_error(inode->i_sb, PTR_ERR(handle));





  ext4_orphan_del(((void*)0), inode);
  sb_end_intwrite(inode->i_sb);
  goto no_delete;
 }

 if (IS_SYNC(inode))
  ext4_handle_sync(handle);
 if (ext4_inode_is_fast_symlink(inode))
  memset(EXT4_I(inode)->i_data, 0, sizeof(EXT4_I(inode)->i_data));
 inode->i_size = 0;
 err = ext4_mark_inode_dirty(handle, inode);
 if (err) {
  ext4_warning(inode->i_sb,
        "couldn't mark inode dirty (err %d)", err);
  goto stop_handle;
 }
 if (inode->i_blocks) {
  err = ext4_truncate(inode);
  if (err) {
   ext4_error(inode->i_sb,
       "couldn't truncate inode %lu (err %d)",
       inode->i_ino, err);
   goto stop_handle;
  }
 }


 err = ext4_xattr_delete_inode(handle, inode, &ea_inode_array,
          extra_credits);
 if (err) {
  ext4_warning(inode->i_sb, "xattr delete (err %d)", err);
stop_handle:
  ext4_journal_stop(handle);
  ext4_orphan_del(((void*)0), inode);
  sb_end_intwrite(inode->i_sb);
  ext4_xattr_inode_array_free(ea_inode_array);
  goto no_delete;
 }
 ext4_orphan_del(handle, inode);
 EXT4_I(inode)->i_dtime = (__u32)ktime_get_real_seconds();
 if (ext4_mark_inode_dirty(handle, inode))

  ext4_clear_inode(inode);
 else
  ext4_free_inode(handle, inode);
 ext4_journal_stop(handle);
 sb_end_intwrite(inode->i_sb);
 ext4_xattr_inode_array_free(ea_inode_array);
 return;
no_delete:
 ext4_clear_inode(inode);
}
