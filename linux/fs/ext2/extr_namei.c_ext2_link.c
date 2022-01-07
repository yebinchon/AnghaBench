
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; } ;
struct dentry {int dummy; } ;


 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int ext2_add_link (struct dentry*,struct inode*) ;
 int ihold (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static int ext2_link (struct dentry * old_dentry, struct inode * dir,
 struct dentry *dentry)
{
 struct inode *inode = d_inode(old_dentry);
 int err;

 err = dquot_initialize(dir);
 if (err)
  return err;

 inode->i_ctime = current_time(inode);
 inode_inc_link_count(inode);
 ihold(inode);

 err = ext2_add_link(dentry, inode);
 if (!err) {
  d_instantiate(dentry, inode);
  return 0;
 }
 inode_dec_link_count(inode);
 iput(inode);
 return err;
}
