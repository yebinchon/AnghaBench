
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_DEADDIR (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 struct inode* ilookup5 (struct super_block*,unsigned long,int ,struct inode*) ;
 int iput (struct inode*) ;
 int ovl_inode_lower (struct inode*) ;
 int ovl_inode_test ;
 int ovl_inode_upper (struct inode*) ;

bool ovl_lookup_trap_inode(struct super_block *sb, struct dentry *dir)
{
 struct inode *key = d_inode(dir);
 struct inode *trap;
 bool res;

 trap = ilookup5(sb, (unsigned long) key, ovl_inode_test, key);
 if (!trap)
  return 0;

 res = IS_DEADDIR(trap) && !ovl_inode_upper(trap) &&
      !ovl_inode_lower(trap);

 iput(trap);
 return res;
}
