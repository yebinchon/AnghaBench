
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {int bh; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_inode_size; } ;


 TYPE_1__* EXT4_SB (int ) ;
 int EXT4_STATE_XATTR ;
 int IFIRST (struct ext4_xattr_ibody_header*) ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,struct ext4_inode*) ;
 int brelse (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 struct ext4_inode* ext4_raw_inode (struct ext4_iloc*) ;
 int ext4_test_inode_state (struct inode*,int ) ;
 int ext4_xattr_list_entries (struct dentry*,int ,char*,size_t) ;
 int xattr_check_inode (struct inode*,struct ext4_xattr_ibody_header*,void*) ;

__attribute__((used)) static int
ext4_xattr_ibody_list(struct dentry *dentry, char *buffer, size_t buffer_size)
{
 struct inode *inode = d_inode(dentry);
 struct ext4_xattr_ibody_header *header;
 struct ext4_inode *raw_inode;
 struct ext4_iloc iloc;
 void *end;
 int error;

 if (!ext4_test_inode_state(inode, EXT4_STATE_XATTR))
  return 0;
 error = ext4_get_inode_loc(inode, &iloc);
 if (error)
  return error;
 raw_inode = ext4_raw_inode(&iloc);
 header = IHDR(inode, raw_inode);
 end = (void *)raw_inode + EXT4_SB(inode->i_sb)->s_inode_size;
 error = xattr_check_inode(inode, header, end);
 if (error)
  goto cleanup;
 error = ext4_xattr_list_entries(dentry, IFIRST(header),
     buffer, buffer_size);

cleanup:
 brelse(iloc.bh);
 return error;
}
