
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_xattr_inode_array {int dummy; } ;
struct ext4_xattr_ibody_header {scalar_t__ h_magic; } ;
struct ext4_xattr_entry {int e_value_size; int e_hash; int e_value_inum; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int i_file_acl; } ;


 struct ext4_xattr_entry* BFIRST (struct buffer_head*) ;
 int EIO ;
 int EXT4_ERROR_INODE (struct inode*,char*,int) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_XATTR ;
 int EXT4_XATTR_MAGIC ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int IFIRST (struct ext4_xattr_ibody_header*) ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,int ) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 int PTR_ERR (struct buffer_head*) ;
 int REQ_PRIO ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 scalar_t__ ext4_has_feature_ea_inode (int ) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_raw_inode (struct ext4_iloc*) ;
 struct buffer_head* ext4_sb_bread (int ,int,int ) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_xattr_check_block (struct inode*,struct buffer_head*) ;
 int ext4_xattr_ensure_credits (int *,struct inode*,int,int *,int,int) ;
 int ext4_xattr_inode_dec_ref_all (int *,struct inode*,struct buffer_head*,int ,int,struct ext4_xattr_inode_array**,int,int) ;
 int ext4_xattr_inode_free_quota (struct inode*,struct inode*,int ) ;
 int ext4_xattr_inode_iget (struct inode*,int ,int ,struct inode**) ;
 int ext4_xattr_release_block (int *,struct inode*,struct buffer_head*,struct ext4_xattr_inode_array**,int) ;
 int iput (struct inode*) ;
 int le32_to_cpu (int ) ;

int ext4_xattr_delete_inode(handle_t *handle, struct inode *inode,
       struct ext4_xattr_inode_array **ea_inode_array,
       int extra_credits)
{
 struct buffer_head *bh = ((void*)0);
 struct ext4_xattr_ibody_header *header;
 struct ext4_iloc iloc = { .bh = ((void*)0) };
 struct ext4_xattr_entry *entry;
 struct inode *ea_inode;
 int error;

 error = ext4_xattr_ensure_credits(handle, inode, extra_credits,
       ((void*)0) ,
       0 ,
       0 );
 if (error) {
  EXT4_ERROR_INODE(inode, "ensure credits (error %d)", error);
  goto cleanup;
 }

 if (ext4_has_feature_ea_inode(inode->i_sb) &&
     ext4_test_inode_state(inode, EXT4_STATE_XATTR)) {

  error = ext4_get_inode_loc(inode, &iloc);
  if (error) {
   EXT4_ERROR_INODE(inode, "inode loc (error %d)", error);
   goto cleanup;
  }

  error = ext4_journal_get_write_access(handle, iloc.bh);
  if (error) {
   EXT4_ERROR_INODE(inode, "write access (error %d)",
      error);
   goto cleanup;
  }

  header = IHDR(inode, ext4_raw_inode(&iloc));
  if (header->h_magic == cpu_to_le32(EXT4_XATTR_MAGIC))
   ext4_xattr_inode_dec_ref_all(handle, inode, iloc.bh,
           IFIRST(header),
           0 ,
           ea_inode_array,
           extra_credits,
           0 );
 }

 if (EXT4_I(inode)->i_file_acl) {
  bh = ext4_sb_bread(inode->i_sb, EXT4_I(inode)->i_file_acl, REQ_PRIO);
  if (IS_ERR(bh)) {
   error = PTR_ERR(bh);
   if (error == -EIO)
    EXT4_ERROR_INODE(inode, "block %llu read error",
       EXT4_I(inode)->i_file_acl);
   bh = ((void*)0);
   goto cleanup;
  }
  error = ext4_xattr_check_block(inode, bh);
  if (error)
   goto cleanup;

  if (ext4_has_feature_ea_inode(inode->i_sb)) {
   for (entry = BFIRST(bh); !IS_LAST_ENTRY(entry);
        entry = EXT4_XATTR_NEXT(entry)) {
    if (!entry->e_value_inum)
     continue;
    error = ext4_xattr_inode_iget(inode,
           le32_to_cpu(entry->e_value_inum),
           le32_to_cpu(entry->e_hash),
           &ea_inode);
    if (error)
     continue;
    ext4_xattr_inode_free_quota(inode, ea_inode,
           le32_to_cpu(entry->e_value_size));
    iput(ea_inode);
   }

  }

  ext4_xattr_release_block(handle, inode, bh, ea_inode_array,
      extra_credits);




  EXT4_I(inode)->i_file_acl = 0;
  error = ext4_mark_inode_dirty(handle, inode);
  if (error) {
   EXT4_ERROR_INODE(inode, "mark inode dirty (error %d)",
      error);
   goto cleanup;
  }
 }
 error = 0;
cleanup:
 brelse(iloc.bh);
 brelse(bh);
 return error;
}
