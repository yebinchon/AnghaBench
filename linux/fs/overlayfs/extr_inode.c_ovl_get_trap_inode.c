
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_state; int i_flags; int i_mode; } ;
struct dentry {int dummy; } ;


 int ELOOP ;
 int ENOMEM ;
 int ENOTDIR ;
 struct inode* ERR_PTR (int ) ;
 int I_NEW ;
 int S_DEAD ;
 int S_IFDIR ;
 struct inode* d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct inode*) ;
 int iput (struct inode*) ;
 int ovl_inode_set ;
 int ovl_inode_test ;
 int unlock_new_inode (struct inode*) ;

struct inode *ovl_get_trap_inode(struct super_block *sb, struct dentry *dir)
{
 struct inode *key = d_inode(dir);
 struct inode *trap;

 if (!d_is_dir(dir))
  return ERR_PTR(-ENOTDIR);

 trap = iget5_locked(sb, (unsigned long) key, ovl_inode_test,
       ovl_inode_set, key);
 if (!trap)
  return ERR_PTR(-ENOMEM);

 if (!(trap->i_state & I_NEW)) {

  iput(trap);
  return ERR_PTR(-ELOOP);
 }

 trap->i_mode = S_IFDIR;
 trap->i_flags = S_DEAD;
 unlock_new_inode(trap);

 return trap;
}
