
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize; int s_blocksize_bits; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct ext4_sb_info {scalar_t__ s_encoding; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int rec_len; scalar_t__ inode; } ;
struct TYPE_3__ {int len; } ;
struct dentry {TYPE_1__ d_name; int d_parent; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;


 int DIRENT ;
 int EINVAL ;
 int ENOSPC ;
 int ERR_BAD_DX_DIR ;
 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_INODE_INDEX ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int EXT4_STATE_NEWENTRY ;
 scalar_t__ IS_CASEFOLDED (struct inode*) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int add_dirent_to_buf (int *,struct ext4_filename*,struct inode*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 struct inode* d_inode (int ) ;
 struct buffer_head* ext4_append (int *,struct inode*,int*) ;
 struct buffer_head* ext4_bread (int *,struct inode*,int,int ) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 int ext4_dx_add_entry (int *,struct ext4_filename*,struct inode*,struct inode*) ;
 int ext4_fname_free_filename (struct ext4_filename*) ;
 int ext4_fname_setup_filename (struct inode*,TYPE_1__*,int ,struct ext4_filename*) ;
 scalar_t__ ext4_has_feature_dir_index (struct super_block*) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 scalar_t__ ext4_has_metadata_csum (struct super_block*) ;
 scalar_t__ ext4_has_strict_mode (struct ext4_sb_info*) ;
 int ext4_initialize_dirent_tail (struct buffer_head*,unsigned int) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 struct buffer_head* ext4_read_dirblock (struct inode*,int,int ) ;
 int ext4_rec_len_to_disk (unsigned int,unsigned int) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_try_add_inline_entry (int *,struct ext4_filename*,struct inode*,struct inode*) ;
 scalar_t__ is_dx (struct inode*) ;
 int make_indexed_dir (int *,struct ext4_filename*,struct inode*,struct inode*,struct buffer_head*) ;
 scalar_t__ utf8_validate (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static int ext4_add_entry(handle_t *handle, struct dentry *dentry,
     struct inode *inode)
{
 struct inode *dir = d_inode(dentry->d_parent);
 struct buffer_head *bh = ((void*)0);
 struct ext4_dir_entry_2 *de;
 struct super_block *sb;
 struct ext4_sb_info *sbi;
 struct ext4_filename fname;
 int retval;
 int dx_fallback=0;
 unsigned blocksize;
 ext4_lblk_t block, blocks;
 int csum_size = 0;

 if (ext4_has_metadata_csum(inode->i_sb))
  csum_size = sizeof(struct ext4_dir_entry_tail);

 sb = dir->i_sb;
 sbi = EXT4_SB(sb);
 blocksize = sb->s_blocksize;
 if (!dentry->d_name.len)
  return -EINVAL;







 retval = ext4_fname_setup_filename(dir, &dentry->d_name, 0, &fname);
 if (retval)
  return retval;

 if (ext4_has_inline_data(dir)) {
  retval = ext4_try_add_inline_entry(handle, &fname, dir, inode);
  if (retval < 0)
   goto out;
  if (retval == 1) {
   retval = 0;
   goto out;
  }
 }

 if (is_dx(dir)) {
  retval = ext4_dx_add_entry(handle, &fname, dir, inode);
  if (!retval || (retval != ERR_BAD_DX_DIR))
   goto out;
  ext4_clear_inode_flag(dir, EXT4_INODE_INDEX);
  dx_fallback++;
  ext4_mark_inode_dirty(handle, dir);
 }
 blocks = dir->i_size >> sb->s_blocksize_bits;
 for (block = 0; block < blocks; block++) {
  bh = ext4_read_dirblock(dir, block, DIRENT);
  if (bh == ((void*)0)) {
   bh = ext4_bread(handle, dir, block,
     EXT4_GET_BLOCKS_CREATE);
   goto add_to_new_block;
  }
  if (IS_ERR(bh)) {
   retval = PTR_ERR(bh);
   bh = ((void*)0);
   goto out;
  }
  retval = add_dirent_to_buf(handle, &fname, dir, inode,
        ((void*)0), bh);
  if (retval != -ENOSPC)
   goto out;

  if (blocks == 1 && !dx_fallback &&
      ext4_has_feature_dir_index(sb)) {
   retval = make_indexed_dir(handle, &fname, dir,
        inode, bh);
   bh = ((void*)0);
   goto out;
  }
  brelse(bh);
 }
 bh = ext4_append(handle, dir, &block);
add_to_new_block:
 if (IS_ERR(bh)) {
  retval = PTR_ERR(bh);
  bh = ((void*)0);
  goto out;
 }
 de = (struct ext4_dir_entry_2 *) bh->b_data;
 de->inode = 0;
 de->rec_len = ext4_rec_len_to_disk(blocksize - csum_size, blocksize);

 if (csum_size)
  ext4_initialize_dirent_tail(bh, blocksize);

 retval = add_dirent_to_buf(handle, &fname, dir, inode, de, bh);
out:
 ext4_fname_free_filename(&fname);
 brelse(bh);
 if (retval == 0)
  ext4_set_inode_state(inode, EXT4_STATE_NEWENTRY);
 return retval;
}
