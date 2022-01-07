
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_nlink; int i_bytes; scalar_t__ i_blocks; int i_ino; int i_sb; void* i_generation; int i_ctime; int i_mode; scalar_t__ i_flags; int i_data; int i_mapping; } ;
struct ext4_inode_info {int i_flags; int i_mmap_sem; int i_data; } ;
typedef int qsize_t ;
typedef struct inode handle_t ;
typedef scalar_t__ blkcnt_t ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int EXT4_BOOT_LOADER_INO ;
 int EXT4_HT_MOVE_EXTENTS ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int EXT4_IGET_SPECIAL ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_JOURNAL_DATA_FL ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_RDONLY (struct inode*) ;
 scalar_t__ IS_SWAPFILE (struct inode*) ;
 long PTR_ERR (struct inode*) ;
 int S_IFREG ;
 int S_ISREG (int ) ;
 int capable (int ) ;
 int current_time (struct inode*) ;
 int down_write (int *) ;
 int dquot_alloc_space (struct inode*,int) ;
 int dquot_free_space (struct inode*,int) ;
 int dquot_initialize (struct inode*) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_double_down_write_data_sem (struct inode*,struct inode*) ;
 int ext4_double_up_write_data_sem (struct inode*,struct inode*) ;
 int ext4_ext_tree_init (struct inode*,struct inode*) ;
 scalar_t__ ext4_has_feature_extents (struct super_block*) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 struct inode* ext4_iget (struct super_block*,int ,int ) ;
 struct inode* ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (struct inode*) ;
 int ext4_mark_inode_dirty (struct inode*,struct inode*) ;
 int ext4_set_inode_flag (struct inode*,int ) ;
 int ext4_warning (int ,char*,int ,int) ;
 int filemap_write_and_wait (int ) ;
 int i_gid_write (struct inode*,int ) ;
 int i_size_write (struct inode*,int ) ;
 int i_uid_write (struct inode*,int ) ;
 int inode_dio_wait (struct inode*) ;
 int inode_owner_or_capable (struct inode*) ;
 int inode_set_iversion (struct inode*,int) ;
 int iput (struct inode*) ;
 int lock_two_nondirectories (struct inode*,struct inode*) ;
 int memset (int ,int ,int) ;
 void* prandom_u32 () ;
 int reset_inode_seed (struct inode*) ;
 int set_nlink (struct inode*,int) ;
 int swap_inode_data (struct inode*,struct inode*) ;
 int truncate_inode_pages (int *,int ) ;
 int unlock_two_nondirectories (struct inode*,struct inode*) ;
 int up_write (int *) ;

__attribute__((used)) static long swap_inode_boot_loader(struct super_block *sb,
    struct inode *inode)
{
 handle_t *handle;
 int err;
 struct inode *inode_bl;
 struct ext4_inode_info *ei_bl;
 qsize_t size, size_bl, diff;
 blkcnt_t blocks;
 unsigned short bytes;

 inode_bl = ext4_iget(sb, EXT4_BOOT_LOADER_INO, EXT4_IGET_SPECIAL);
 if (IS_ERR(inode_bl))
  return PTR_ERR(inode_bl);
 ei_bl = EXT4_I(inode_bl);



 lock_two_nondirectories(inode, inode_bl);

 if (inode->i_nlink != 1 || !S_ISREG(inode->i_mode) ||
     IS_SWAPFILE(inode) || IS_ENCRYPTED(inode) ||
     (EXT4_I(inode)->i_flags & EXT4_JOURNAL_DATA_FL) ||
     ext4_has_inline_data(inode)) {
  err = -EINVAL;
  goto journal_err_out;
 }

 if (IS_RDONLY(inode) || IS_APPEND(inode) || IS_IMMUTABLE(inode) ||
     !inode_owner_or_capable(inode) || !capable(CAP_SYS_ADMIN)) {
  err = -EPERM;
  goto journal_err_out;
 }

 down_write(&EXT4_I(inode)->i_mmap_sem);
 err = filemap_write_and_wait(inode->i_mapping);
 if (err)
  goto err_out;

 err = filemap_write_and_wait(inode_bl->i_mapping);
 if (err)
  goto err_out;


 inode_dio_wait(inode);
 inode_dio_wait(inode_bl);

 truncate_inode_pages(&inode->i_data, 0);
 truncate_inode_pages(&inode_bl->i_data, 0);

 handle = ext4_journal_start(inode_bl, EXT4_HT_MOVE_EXTENTS, 2);
 if (IS_ERR(handle)) {
  err = -EINVAL;
  goto err_out;
 }


 ext4_double_down_write_data_sem(inode, inode_bl);

 if (inode_bl->i_nlink == 0) {

  set_nlink(inode_bl, 1);
  i_uid_write(inode_bl, 0);
  i_gid_write(inode_bl, 0);
  inode_bl->i_flags = 0;
  ei_bl->i_flags = 0;
  inode_set_iversion(inode_bl, 1);
  i_size_write(inode_bl, 0);
  inode_bl->i_mode = S_IFREG;
  if (ext4_has_feature_extents(sb)) {
   ext4_set_inode_flag(inode_bl, EXT4_INODE_EXTENTS);
   ext4_ext_tree_init(handle, inode_bl);
  } else
   memset(ei_bl->i_data, 0, sizeof(ei_bl->i_data));
 }

 err = dquot_initialize(inode);
 if (err)
  goto err_out1;

 size = (qsize_t)(inode->i_blocks) * (1 << 9) + inode->i_bytes;
 size_bl = (qsize_t)(inode_bl->i_blocks) * (1 << 9) + inode_bl->i_bytes;
 diff = size - size_bl;
 swap_inode_data(inode, inode_bl);

 inode->i_ctime = inode_bl->i_ctime = current_time(inode);

 inode->i_generation = prandom_u32();
 inode_bl->i_generation = prandom_u32();
 reset_inode_seed(inode);
 reset_inode_seed(inode_bl);

 ext4_discard_preallocations(inode);

 err = ext4_mark_inode_dirty(handle, inode);
 if (err < 0) {

  ext4_warning(inode->i_sb,
   "couldn't mark inode #%lu dirty (err %d)",
   inode->i_ino, err);

  swap_inode_data(inode, inode_bl);
  ext4_mark_inode_dirty(handle, inode);
  goto err_out1;
 }

 blocks = inode_bl->i_blocks;
 bytes = inode_bl->i_bytes;
 inode_bl->i_blocks = inode->i_blocks;
 inode_bl->i_bytes = inode->i_bytes;
 err = ext4_mark_inode_dirty(handle, inode_bl);
 if (err < 0) {

  ext4_warning(inode_bl->i_sb,
   "couldn't mark inode #%lu dirty (err %d)",
   inode_bl->i_ino, err);
  goto revert;
 }


 if (diff > 0)
  dquot_free_space(inode, diff);
 else
  err = dquot_alloc_space(inode, -1 * diff);

 if (err < 0) {
revert:

  inode_bl->i_blocks = blocks;
  inode_bl->i_bytes = bytes;
  swap_inode_data(inode, inode_bl);
  ext4_mark_inode_dirty(handle, inode);
  ext4_mark_inode_dirty(handle, inode_bl);
 }

err_out1:
 ext4_journal_stop(handle);
 ext4_double_up_write_data_sem(inode, inode_bl);

err_out:
 up_write(&EXT4_I(inode)->i_mmap_sem);
journal_err_out:
 unlock_two_nondirectories(inode, inode_bl);
 iput(inode_bl);
 return err;
}
