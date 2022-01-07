
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; scalar_t__ i_nlink; int i_sb; int i_data; } ;
struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ nid_t ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;


 int APPEND_INO ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 scalar_t__ F2FS_HAS_BLOCKS (struct inode*) ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ F2FS_META_INO (struct f2fs_sb_info*) ;
 scalar_t__ F2FS_NODE_INO (struct f2fs_sb_info*) ;
 int FAULT_EVICT_INODE ;
 int FI_APPEND_WRITE ;
 int FI_DIRTY_INODE ;
 int FI_FREE_NID ;
 int FI_NO_ALLOC ;
 int FI_UPDATE_WRITE ;
 int FLUSH_INO ;
 int NODE_MAPPING (struct f2fs_sb_info*) ;
 int SBI_CP_DISABLED ;
 int SBI_QUOTA_NEED_REPAIR ;
 int UPDATE_INO ;
 int clear_inode (struct inode*) ;
 int clear_inode_flag (struct inode*,int ) ;
 int dquot_drop (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 scalar_t__ dquot_initialize_needed (struct inode*) ;
 int f2fs_add_ino_entry (struct f2fs_sb_info*,scalar_t__,int ) ;
 int f2fs_alloc_nid_failed (struct f2fs_sb_info*,scalar_t__) ;
 int f2fs_bug_on (struct f2fs_sb_info*,scalar_t__) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_destroy_extent_tree (struct inode*) ;
 int f2fs_drop_inmem_pages (struct inode*) ;
 int f2fs_inode_synced (struct inode*) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_remove_dirty_inode (struct inode*) ;
 int f2fs_remove_ino_entry (struct f2fs_sb_info*,scalar_t__,int ) ;
 int f2fs_remove_inode_page (struct inode*) ;
 int f2fs_show_injection_info (int ) ;
 int f2fs_truncate (struct inode*) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int f2fs_update_inode_page (struct inode*) ;
 int fscrypt_put_encryption_info (struct inode*) ;
 int fsverity_cleanup_inode (struct inode*) ;
 scalar_t__ get_dirty_pages (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int invalidate_mapping_pages (int ,scalar_t__,scalar_t__) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ likely (int) ;
 int sb_end_intwrite (int ) ;
 int sb_start_intwrite (int ) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int stat_dec_inline_dir (struct inode*) ;
 int stat_dec_inline_inode (struct inode*) ;
 int stat_dec_inline_xattr (struct inode*) ;
 scalar_t__ time_to_inject (struct f2fs_sb_info*,int ) ;
 int trace_f2fs_evict_inode (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

void f2fs_evict_inode(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 nid_t xnid = F2FS_I(inode)->i_xattr_nid;
 int err = 0;


 if (f2fs_is_atomic_file(inode))
  f2fs_drop_inmem_pages(inode);

 trace_f2fs_evict_inode(inode);
 truncate_inode_pages_final(&inode->i_data);

 if (inode->i_ino == F2FS_NODE_INO(sbi) ||
   inode->i_ino == F2FS_META_INO(sbi))
  goto out_clear;

 f2fs_bug_on(sbi, get_dirty_pages(inode));
 f2fs_remove_dirty_inode(inode);

 f2fs_destroy_extent_tree(inode);

 if (inode->i_nlink || is_bad_inode(inode))
  goto no_delete;

 err = dquot_initialize(inode);
 if (err) {
  err = 0;
  set_sbi_flag(sbi, SBI_QUOTA_NEED_REPAIR);
 }

 f2fs_remove_ino_entry(sbi, inode->i_ino, APPEND_INO);
 f2fs_remove_ino_entry(sbi, inode->i_ino, UPDATE_INO);
 f2fs_remove_ino_entry(sbi, inode->i_ino, FLUSH_INO);

 sb_start_intwrite(inode->i_sb);
 set_inode_flag(inode, FI_NO_ALLOC);
 i_size_write(inode, 0);
retry:
 if (F2FS_HAS_BLOCKS(inode))
  err = f2fs_truncate(inode);

 if (time_to_inject(sbi, FAULT_EVICT_INODE)) {
  f2fs_show_injection_info(FAULT_EVICT_INODE);
  err = -EIO;
 }

 if (!err) {
  f2fs_lock_op(sbi);
  err = f2fs_remove_inode_page(inode);
  f2fs_unlock_op(sbi);
  if (err == -ENOENT)
   err = 0;
 }


 if (err == -ENOMEM) {
  err = 0;
  goto retry;
 }

 if (err) {
  f2fs_update_inode_page(inode);
  if (dquot_initialize_needed(inode))
   set_sbi_flag(sbi, SBI_QUOTA_NEED_REPAIR);
 }
 sb_end_intwrite(inode->i_sb);
no_delete:
 dquot_drop(inode);

 stat_dec_inline_xattr(inode);
 stat_dec_inline_dir(inode);
 stat_dec_inline_inode(inode);

 if (likely(!f2fs_cp_error(sbi) &&
    !is_sbi_flag_set(sbi, SBI_CP_DISABLED)))
  f2fs_bug_on(sbi, is_inode_flag_set(inode, FI_DIRTY_INODE));
 else
  f2fs_inode_synced(inode);


 if (inode->i_ino)
  invalidate_mapping_pages(NODE_MAPPING(sbi), inode->i_ino,
       inode->i_ino);
 if (xnid)
  invalidate_mapping_pages(NODE_MAPPING(sbi), xnid, xnid);
 if (inode->i_nlink) {
  if (is_inode_flag_set(inode, FI_APPEND_WRITE))
   f2fs_add_ino_entry(sbi, inode->i_ino, APPEND_INO);
  if (is_inode_flag_set(inode, FI_UPDATE_WRITE))
   f2fs_add_ino_entry(sbi, inode->i_ino, UPDATE_INO);
 }
 if (is_inode_flag_set(inode, FI_FREE_NID)) {
  f2fs_alloc_nid_failed(sbi, inode->i_ino);
  clear_inode_flag(inode, FI_FREE_NID);
 } else {





 }
out_clear:
 fscrypt_put_encryption_info(inode);
 fsverity_cleanup_inode(inode);
 clear_inode(inode);
}
