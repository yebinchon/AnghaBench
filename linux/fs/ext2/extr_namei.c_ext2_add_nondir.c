
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int ext2_add_link (struct dentry*,struct inode*) ;
 int inode_dec_link_count (struct inode*) ;

__attribute__((used)) static inline int ext2_add_nondir(struct dentry *dentry, struct inode *inode)
{
 int err = ext2_add_link(dentry, inode);
 if (!err) {
  d_instantiate_new(dentry, inode);
  return 0;
 }
 inode_dec_link_count(inode);
 discard_new_inode(inode);
 return err;
}
