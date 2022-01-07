
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_blocks; int i_blkbits; } ;
struct ext4_super_block {int s_first_meta_bg; scalar_t__ s_reserved_gdt_blocks; } ;
struct ext4_sb_info {int s_cluster_bits; int s_groups_count; struct ext4_super_block* s_es; int s_sbh; } ;
struct ext4_inode_info {scalar_t__* i_data; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;


 int BUFFER_TRACE (int ,char*) ;
 int EINVAL ;
 int EPERM ;
 int EXT4_DIND_BLOCK ;
 int EXT4_FREE_BLOCKS_FORGET ;
 int EXT4_FREE_BLOCKS_METADATA ;
 int EXT4_HT_RESIZE ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int EXT4_N_BLOCKS ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 scalar_t__ IS_ERR (int *) ;
 int KERN_INFO ;
 int PTR_ERR (int *) ;
 int cpu_to_le32 (int ) ;
 int ext4_clear_feature_resize_inode (struct super_block*) ;
 int ext4_error (struct super_block*,char*) ;
 int ext4_free_blocks (int *,struct inode*,int *,int ,int,int) ;
 int ext4_handle_dirty_super (int *,struct super_block*) ;
 int ext4_journal_get_write_access (int *,int ) ;
 int * ext4_journal_start_sb (struct super_block*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 int ext4_set_feature_meta_bg (struct super_block*) ;
 int ext4_std_error (struct super_block*,int) ;
 int le32_to_cpu (scalar_t__) ;
 int num_desc_blocks (struct super_block*,int ) ;

__attribute__((used)) static int ext4_convert_meta_bg(struct super_block *sb, struct inode *inode)
{
 handle_t *handle;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_super_block *es = sbi->s_es;
 struct ext4_inode_info *ei = EXT4_I(inode);
 ext4_fsblk_t nr;
 int i, ret, err = 0;
 int credits = 1;

 ext4_msg(sb, KERN_INFO, "Converting file system to meta_bg");
 if (inode) {
  if (es->s_reserved_gdt_blocks) {
   ext4_error(sb, "Unexpected non-zero "
       "s_reserved_gdt_blocks");
   return -EPERM;
  }


  if (inode->i_blocks != 1 << (inode->i_blkbits -
          (9 - sbi->s_cluster_bits)))
   goto invalid_resize_inode;
  for (i = 0; i < EXT4_N_BLOCKS; i++) {
   if (i == EXT4_DIND_BLOCK) {
    if (ei->i_data[i])
     continue;
    else
     goto invalid_resize_inode;
   }
   if (ei->i_data[i])
    goto invalid_resize_inode;
  }
  credits += 3;
 }

 handle = ext4_journal_start_sb(sb, EXT4_HT_RESIZE, credits);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 BUFFER_TRACE(sbi->s_sbh, "get_write_access");
 err = ext4_journal_get_write_access(handle, sbi->s_sbh);
 if (err)
  goto errout;

 ext4_clear_feature_resize_inode(sb);
 ext4_set_feature_meta_bg(sb);
 sbi->s_es->s_first_meta_bg =
  cpu_to_le32(num_desc_blocks(sb, sbi->s_groups_count));

 err = ext4_handle_dirty_super(handle, sb);
 if (err) {
  ext4_std_error(sb, err);
  goto errout;
 }

 if (inode) {
  nr = le32_to_cpu(ei->i_data[EXT4_DIND_BLOCK]);
  ext4_free_blocks(handle, inode, ((void*)0), nr, 1,
     EXT4_FREE_BLOCKS_METADATA |
     EXT4_FREE_BLOCKS_FORGET);
  ei->i_data[EXT4_DIND_BLOCK] = 0;
  inode->i_blocks = 0;

  err = ext4_mark_inode_dirty(handle, inode);
  if (err)
   ext4_std_error(sb, err);
 }

errout:
 ret = ext4_journal_stop(handle);
 if (!err)
  err = ret;
 return ret;

invalid_resize_inode:
 ext4_error(sb, "corrupted/inconsistent resize inode");
 return -EINVAL;
}
