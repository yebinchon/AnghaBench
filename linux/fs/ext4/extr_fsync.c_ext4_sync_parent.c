
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
struct dentry {int d_parent; } ;


 int EXT4_STATE_NEWENTRY ;
 struct dentry* d_find_any_alias (struct inode*) ;
 struct inode* d_inode (int ) ;
 int dput (struct dentry*) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 struct inode* igrab (struct inode*) ;
 int iput (struct inode*) ;
 int sync_inode_metadata (struct inode*,int) ;
 int sync_mapping_buffers (int ) ;

__attribute__((used)) static int ext4_sync_parent(struct inode *inode)
{
 struct dentry *dentry = ((void*)0);
 struct inode *next;
 int ret = 0;

 if (!ext4_test_inode_state(inode, EXT4_STATE_NEWENTRY))
  return 0;
 inode = igrab(inode);
 while (ext4_test_inode_state(inode, EXT4_STATE_NEWENTRY)) {
  ext4_clear_inode_state(inode, EXT4_STATE_NEWENTRY);
  dentry = d_find_any_alias(inode);
  if (!dentry)
   break;
  next = igrab(d_inode(dentry->d_parent));
  dput(dentry);
  if (!next)
   break;
  iput(inode);
  inode = next;







  ret = sync_mapping_buffers(inode->i_mapping);
  if (ret)
   break;
  ret = sync_inode_metadata(inode, 1);
  if (ret)
   break;
 }
 iput(inode);
 return ret;
}
