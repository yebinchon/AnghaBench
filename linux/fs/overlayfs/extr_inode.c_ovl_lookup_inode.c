
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 struct inode* d_inode (struct dentry*) ;
 struct inode* ilookup5 (struct super_block*,unsigned long,int ,struct inode*) ;
 int iput (struct inode*) ;
 int ovl_inode_test ;
 int ovl_verify_inode (struct inode*,struct dentry*,struct dentry*,int) ;

struct inode *ovl_lookup_inode(struct super_block *sb, struct dentry *real,
          bool is_upper)
{
 struct inode *inode, *key = d_inode(real);

 inode = ilookup5(sb, (unsigned long) key, ovl_inode_test, key);
 if (!inode)
  return ((void*)0);

 if (!ovl_verify_inode(inode, is_upper ? ((void*)0) : real,
         is_upper ? real : ((void*)0), 0)) {
  iput(inode);
  return ERR_PTR(-ESTALE);
 }

 return inode;
}
