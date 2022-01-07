
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_xattr_inode_array {int dummy; } ;
struct ext4_xattr_entry {scalar_t__ e_value_size; scalar_t__ e_value_inum; scalar_t__ e_hash; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 int ext4_expand_inode_array (struct ext4_xattr_inode_array**,struct inode*) ;
 int ext4_handle_dirty_metadata (int *,int *,struct buffer_head*) ;
 int ext4_warning_inode (struct inode*,char*,int) ;
 int ext4_xattr_ensure_credits (int *,struct inode*,int,struct buffer_head*,int,int) ;
 int ext4_xattr_inode_dec_ref (int *,struct inode*) ;
 int ext4_xattr_inode_free_quota (struct inode*,struct inode*,unsigned int) ;
 int ext4_xattr_inode_iget (struct inode*,unsigned int,unsigned int,struct inode**) ;
 int iput (struct inode*) ;
 unsigned int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static void
ext4_xattr_inode_dec_ref_all(handle_t *handle, struct inode *parent,
        struct buffer_head *bh,
        struct ext4_xattr_entry *first, bool block_csum,
        struct ext4_xattr_inode_array **ea_inode_array,
        int extra_credits, bool skip_quota)
{
 struct inode *ea_inode;
 struct ext4_xattr_entry *entry;
 bool dirty = 0;
 unsigned int ea_ino;
 int err;
 int credits;


 credits = 2 + extra_credits;

 for (entry = first; !IS_LAST_ENTRY(entry);
      entry = EXT4_XATTR_NEXT(entry)) {
  if (!entry->e_value_inum)
   continue;
  ea_ino = le32_to_cpu(entry->e_value_inum);
  err = ext4_xattr_inode_iget(parent, ea_ino,
         le32_to_cpu(entry->e_hash),
         &ea_inode);
  if (err)
   continue;

  err = ext4_expand_inode_array(ea_inode_array, ea_inode);
  if (err) {
   ext4_warning_inode(ea_inode,
        "Expand inode array err=%d", err);
   iput(ea_inode);
   continue;
  }

  err = ext4_xattr_ensure_credits(handle, parent, credits, bh,
      dirty, block_csum);
  if (err) {
   ext4_warning_inode(ea_inode, "Ensure credits err=%d",
        err);
   continue;
  }

  err = ext4_xattr_inode_dec_ref(handle, ea_inode);
  if (err) {
   ext4_warning_inode(ea_inode, "ea_inode dec ref err=%d",
        err);
   continue;
  }

  if (!skip_quota)
   ext4_xattr_inode_free_quota(parent, ea_inode,
           le32_to_cpu(entry->e_value_size));







  entry->e_value_inum = 0;
  entry->e_value_size = 0;

  dirty = 1;
 }

 if (dirty) {






  err = ext4_handle_dirty_metadata(handle, ((void*)0), bh);
  if (err)
   ext4_warning_inode(parent,
        "handle dirty metadata err=%d", err);
 }
}
