
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blkbits; scalar_t__ i_sb; int i_ino; int i_mode; } ;
struct file {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {size_t p_depth; struct ext4_extent* p_ext; } ;
typedef int pgoff_t ;
typedef int ext4_lblk_t ;
typedef scalar_t__ __u64 ;


 int EINVAL ;
 int ENODATA ;
 int EOPNOTSUPP ;
 int EXT_MAX_BLOCKS ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 int KERN_ERR ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int S_ISREG (int ) ;
 int ext4_debug (char*,int ,int ) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_double_down_write_data_sem (struct inode*,struct inode*) ;
 int ext4_double_up_write_data_sem (struct inode*,struct inode*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_is_unwritten (struct ext4_extent*) ;
 int ext4_ext_next_allocated_block (struct ext4_ext_path*) ;
 int ext4_msg (scalar_t__,int ,char*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int get_ext_path (struct inode*,int,struct ext4_ext_path**) ;
 int inode_dio_wait (struct inode*) ;
 int kfree (struct ext4_ext_path*) ;
 int le32_to_cpu (int ) ;
 int lock_two_nondirectories (struct inode*,struct inode*) ;
 int mext_check_arguments (struct inode*,struct inode*,scalar_t__,scalar_t__,scalar_t__*) ;
 int move_extent_per_page (struct file*,struct inode*,int,int,int,int,int,int*) ;
 int unlock_two_nondirectories (struct inode*,struct inode*) ;

int
ext4_move_extents(struct file *o_filp, struct file *d_filp, __u64 orig_blk,
    __u64 donor_blk, __u64 len, __u64 *moved_len)
{
 struct inode *orig_inode = file_inode(o_filp);
 struct inode *donor_inode = file_inode(d_filp);
 struct ext4_ext_path *path = ((void*)0);
 int blocks_per_page = PAGE_SIZE >> orig_inode->i_blkbits;
 ext4_lblk_t o_end, o_start = orig_blk;
 ext4_lblk_t d_start = donor_blk;
 int ret;

 if (orig_inode->i_sb != donor_inode->i_sb) {
  ext4_debug("ext4 move extent: The argument files "
   "should be in same FS [ino:orig %lu, donor %lu]\n",
   orig_inode->i_ino, donor_inode->i_ino);
  return -EINVAL;
 }


 if (orig_inode == donor_inode) {
  ext4_debug("ext4 move extent: The argument files should not "
   "be same inode [ino:orig %lu, donor %lu]\n",
   orig_inode->i_ino, donor_inode->i_ino);
  return -EINVAL;
 }


 if (!S_ISREG(orig_inode->i_mode) || !S_ISREG(donor_inode->i_mode)) {
  ext4_debug("ext4 move extent: The argument files should be "
   "regular file [ino:orig %lu, donor %lu]\n",
   orig_inode->i_ino, donor_inode->i_ino);
  return -EINVAL;
 }



 if (ext4_should_journal_data(orig_inode) ||
     ext4_should_journal_data(donor_inode)) {
  ext4_msg(orig_inode->i_sb, KERN_ERR,
    "Online defrag not supported with data journaling");
  return -EOPNOTSUPP;
 }

 if (IS_ENCRYPTED(orig_inode) || IS_ENCRYPTED(donor_inode)) {
  ext4_msg(orig_inode->i_sb, KERN_ERR,
    "Online defrag not supported for encrypted files");
  return -EOPNOTSUPP;
 }


 lock_two_nondirectories(orig_inode, donor_inode);


 inode_dio_wait(orig_inode);
 inode_dio_wait(donor_inode);


 ext4_double_down_write_data_sem(orig_inode, donor_inode);

 ret = mext_check_arguments(orig_inode, donor_inode, orig_blk,
        donor_blk, &len);
 if (ret)
  goto out;
 o_end = o_start + len;

 while (o_start < o_end) {
  struct ext4_extent *ex;
  ext4_lblk_t cur_blk, next_blk;
  pgoff_t orig_page_index, donor_page_index;
  int offset_in_page;
  int unwritten, cur_len;

  ret = get_ext_path(orig_inode, o_start, &path);
  if (ret)
   goto out;
  ex = path[path->p_depth].p_ext;
  next_blk = ext4_ext_next_allocated_block(path);
  cur_blk = le32_to_cpu(ex->ee_block);
  cur_len = ext4_ext_get_actual_len(ex);

  if (cur_blk + cur_len - 1 < o_start) {
   if (next_blk == EXT_MAX_BLOCKS) {
    o_start = o_end;
    ret = -ENODATA;
    goto out;
   }
   d_start += next_blk - o_start;
   o_start = next_blk;
   continue;

  } else if (cur_blk > o_start) {

   d_start += cur_blk - o_start;
   o_start = cur_blk;

   if (cur_blk >= o_end)
    goto out;
  } else {
   cur_len += cur_blk - o_start;
  }
  unwritten = ext4_ext_is_unwritten(ex);
  if (o_end - o_start < cur_len)
   cur_len = o_end - o_start;

  orig_page_index = o_start >> (PAGE_SHIFT -
            orig_inode->i_blkbits);
  donor_page_index = d_start >> (PAGE_SHIFT -
            donor_inode->i_blkbits);
  offset_in_page = o_start % blocks_per_page;
  if (cur_len > blocks_per_page- offset_in_page)
   cur_len = blocks_per_page - offset_in_page;







  ext4_double_up_write_data_sem(orig_inode, donor_inode);

  move_extent_per_page(o_filp, donor_inode,
         orig_page_index, donor_page_index,
         offset_in_page, cur_len,
         unwritten, &ret);
  ext4_double_down_write_data_sem(orig_inode, donor_inode);
  if (ret < 0)
   break;
  o_start += cur_len;
  d_start += cur_len;
 }
 *moved_len = o_start - orig_blk;
 if (*moved_len > len)
  *moved_len = len;

out:
 if (*moved_len) {
  ext4_discard_preallocations(orig_inode);
  ext4_discard_preallocations(donor_inode);
 }

 ext4_ext_drop_refs(path);
 kfree(path);
 ext4_double_up_write_data_sem(orig_inode, donor_inode);
 unlock_two_nondirectories(orig_inode, donor_inode);

 return ret;
}
