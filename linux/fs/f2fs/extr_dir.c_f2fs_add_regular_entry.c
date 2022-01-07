
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct qstr {int len; } ;
struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct f2fs_dentry_ptr {int dummy; } ;
struct f2fs_dentry_block {int dentry_bitmap; } ;
typedef int nid_t ;
typedef scalar_t__ f2fs_hash_t ;
struct TYPE_2__ {unsigned int i_current_depth; scalar_t__ chash; unsigned int clevel; int i_sem; int i_dir_level; } ;


 int DATA ;
 int ENOSPC ;
 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 int FAULT_DIR_DEPTH ;
 int FI_NEW_INODE ;
 int GET_DENTRY_SLOTS (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 unsigned int MAX_DIR_HASH_DEPTH ;
 unsigned int NR_DENTRY_IN_BLOCK ;
 int PTR_ERR (struct page*) ;
 unsigned int bucket_blocks (unsigned int) ;
 unsigned long dir_block_index (unsigned int,int ,unsigned int) ;
 unsigned int dir_buckets (unsigned int,int ) ;
 int down_write (int *) ;
 scalar_t__ f2fs_dentry_hash (struct inode*,struct qstr const*,int *) ;
 struct page* f2fs_get_new_data_page (struct inode*,int *,unsigned long,int) ;
 int f2fs_i_pino_write (struct inode*,int ) ;
 struct page* f2fs_init_inode_metadata (struct inode*,struct inode*,struct qstr const*,struct qstr const*,int *) ;
 int f2fs_put_page (struct page*,int) ;
 unsigned int f2fs_room_for_filename (int *,int,unsigned int) ;
 int f2fs_show_injection_info (int ) ;
 int f2fs_update_dentry (int ,int ,struct f2fs_dentry_ptr*,struct qstr const*,scalar_t__,unsigned int) ;
 int f2fs_update_inode (struct inode*,struct page*) ;
 int f2fs_update_parent_metadata (struct inode*,struct inode*,unsigned int) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 unsigned int le32_to_cpu (scalar_t__) ;
 int make_dentry_ptr_block (int *,struct f2fs_dentry_ptr*,struct f2fs_dentry_block*) ;
 struct f2fs_dentry_block* page_address (struct page*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ time_to_inject (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

int f2fs_add_regular_entry(struct inode *dir, const struct qstr *new_name,
    const struct qstr *orig_name,
    struct inode *inode, nid_t ino, umode_t mode)
{
 unsigned int bit_pos;
 unsigned int level;
 unsigned int current_depth;
 unsigned long bidx, block;
 f2fs_hash_t dentry_hash;
 unsigned int nbucket, nblock;
 struct page *dentry_page = ((void*)0);
 struct f2fs_dentry_block *dentry_blk = ((void*)0);
 struct f2fs_dentry_ptr d;
 struct page *page = ((void*)0);
 int slots, err = 0;

 level = 0;
 slots = GET_DENTRY_SLOTS(new_name->len);
 dentry_hash = f2fs_dentry_hash(dir, new_name, ((void*)0));

 current_depth = F2FS_I(dir)->i_current_depth;
 if (F2FS_I(dir)->chash == dentry_hash) {
  level = F2FS_I(dir)->clevel;
  F2FS_I(dir)->chash = 0;
 }

start:
 if (time_to_inject(F2FS_I_SB(dir), FAULT_DIR_DEPTH)) {
  f2fs_show_injection_info(FAULT_DIR_DEPTH);
  return -ENOSPC;
 }

 if (unlikely(current_depth == MAX_DIR_HASH_DEPTH))
  return -ENOSPC;


 if (level == current_depth)
  ++current_depth;

 nbucket = dir_buckets(level, F2FS_I(dir)->i_dir_level);
 nblock = bucket_blocks(level);

 bidx = dir_block_index(level, F2FS_I(dir)->i_dir_level,
    (le32_to_cpu(dentry_hash) % nbucket));

 for (block = bidx; block <= (bidx + nblock - 1); block++) {
  dentry_page = f2fs_get_new_data_page(dir, ((void*)0), block, 1);
  if (IS_ERR(dentry_page))
   return PTR_ERR(dentry_page);

  dentry_blk = page_address(dentry_page);
  bit_pos = f2fs_room_for_filename(&dentry_blk->dentry_bitmap,
      slots, NR_DENTRY_IN_BLOCK);
  if (bit_pos < NR_DENTRY_IN_BLOCK)
   goto add_dentry;

  f2fs_put_page(dentry_page, 1);
 }


 ++level;
 goto start;
add_dentry:
 f2fs_wait_on_page_writeback(dentry_page, DATA, 1, 1);

 if (inode) {
  down_write(&F2FS_I(inode)->i_sem);
  page = f2fs_init_inode_metadata(inode, dir, new_name,
      orig_name, ((void*)0));
  if (IS_ERR(page)) {
   err = PTR_ERR(page);
   goto fail;
  }
 }

 make_dentry_ptr_block(((void*)0), &d, dentry_blk);
 f2fs_update_dentry(ino, mode, &d, new_name, dentry_hash, bit_pos);

 set_page_dirty(dentry_page);

 if (inode) {
  f2fs_i_pino_write(inode, dir->i_ino);


  if (is_inode_flag_set(inode, FI_NEW_INODE))
   f2fs_update_inode(inode, page);

  f2fs_put_page(page, 1);
 }

 f2fs_update_parent_metadata(dir, inode, current_depth);
fail:
 if (inode)
  up_write(&F2FS_I(inode)->i_sem);

 f2fs_put_page(dentry_page, 1);

 return err;
}
