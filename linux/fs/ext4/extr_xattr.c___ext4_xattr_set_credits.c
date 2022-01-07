
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {size_t s_blocksize; size_t s_blocksize_bits; } ;
struct inode {int dummy; } ;
struct ext4_xattr_entry {scalar_t__ e_value_inum; } ;
struct buffer_head {int dummy; } ;


 struct ext4_xattr_entry* BFIRST (struct buffer_head*) ;
 scalar_t__ EXT4_MAXQUOTAS_TRANS_BLOCKS (struct super_block*) ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 int XATTR_SIZE_MAX ;
 int ext4_has_feature_ea_inode (struct super_block*) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 scalar_t__ ext4_writepage_trans_blocks (struct inode*) ;

int __ext4_xattr_set_credits(struct super_block *sb, struct inode *inode,
        struct buffer_head *block_bh, size_t value_len,
        bool is_create)
{
 int credits;
 int blocks;
 credits = 7;


 credits += EXT4_MAXQUOTAS_TRANS_BLOCKS(sb);





 if (inode && ext4_has_inline_data(inode))
  credits += ext4_writepage_trans_blocks(inode) + 1;


 if (!ext4_has_feature_ea_inode(sb))
  return credits;


 credits += 4;


 blocks = (value_len + sb->s_blocksize - 1) >> sb->s_blocksize_bits;


 blocks += 1;


 credits += blocks * 2;


 credits += blocks;

 if (!is_create) {



  credits += 4;


  blocks = XATTR_SIZE_MAX >> sb->s_blocksize_bits;




  blocks += 1;


  credits += blocks * 2;
 }




 if (block_bh) {
  struct ext4_xattr_entry *entry = BFIRST(block_bh);

  for (; !IS_LAST_ENTRY(entry); entry = EXT4_XATTR_NEXT(entry))
   if (entry->e_value_inum)

    credits += 1;
 }
 return credits;
}
