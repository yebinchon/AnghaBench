
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {scalar_t__ e_value_inum; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ qsize_t ;
struct TYPE_4__ {scalar_t__ i_file_acl; int xattr_sem; } ;
struct TYPE_3__ {int s_inode_size; } ;


 struct ext4_xattr_entry* BFIRST (struct buffer_head*) ;
 TYPE_2__* EXT4_I (struct inode*) ;
 TYPE_1__* EXT4_SB (int ) ;
 int EXT4_STATE_XATTR ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 struct ext4_xattr_entry* IFIRST (struct ext4_xattr_ibody_header*) ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,struct ext4_inode*) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 int PTR_ERR (struct buffer_head*) ;
 int REQ_PRIO ;
 int brelse (struct buffer_head*) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 struct ext4_inode* ext4_raw_inode (struct ext4_iloc*) ;
 struct buffer_head* ext4_sb_bread (int ,scalar_t__,int ) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_xattr_check_block (struct inode*,struct buffer_head*) ;
 int lockdep_assert_held_read (int *) ;
 int xattr_check_inode (struct inode*,struct ext4_xattr_ibody_header*,void*) ;

int ext4_get_inode_usage(struct inode *inode, qsize_t *usage)
{
 struct ext4_iloc iloc = { .bh = ((void*)0) };
 struct buffer_head *bh = ((void*)0);
 struct ext4_inode *raw_inode;
 struct ext4_xattr_ibody_header *header;
 struct ext4_xattr_entry *entry;
 qsize_t ea_inode_refs = 0;
 void *end;
 int ret;

 lockdep_assert_held_read(&EXT4_I(inode)->xattr_sem);

 if (ext4_test_inode_state(inode, EXT4_STATE_XATTR)) {
  ret = ext4_get_inode_loc(inode, &iloc);
  if (ret)
   goto out;
  raw_inode = ext4_raw_inode(&iloc);
  header = IHDR(inode, raw_inode);
  end = (void *)raw_inode + EXT4_SB(inode->i_sb)->s_inode_size;
  ret = xattr_check_inode(inode, header, end);
  if (ret)
   goto out;

  for (entry = IFIRST(header); !IS_LAST_ENTRY(entry);
       entry = EXT4_XATTR_NEXT(entry))
   if (entry->e_value_inum)
    ea_inode_refs++;
 }

 if (EXT4_I(inode)->i_file_acl) {
  bh = ext4_sb_bread(inode->i_sb, EXT4_I(inode)->i_file_acl, REQ_PRIO);
  if (IS_ERR(bh)) {
   ret = PTR_ERR(bh);
   bh = ((void*)0);
   goto out;
  }

  ret = ext4_xattr_check_block(inode, bh);
  if (ret)
   goto out;

  for (entry = BFIRST(bh); !IS_LAST_ENTRY(entry);
       entry = EXT4_XATTR_NEXT(entry))
   if (entry->e_value_inum)
    ea_inode_refs++;
 }
 *usage = ea_inode_refs + 1;
 ret = 0;
out:
 brelse(iloc.bh);
 brelse(bh);
 return ret;
}
