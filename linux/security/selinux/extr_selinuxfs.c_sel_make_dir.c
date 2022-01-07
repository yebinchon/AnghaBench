
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned long i_ino; int * i_fop; int * i_op; } ;
struct dentry {int d_sb; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char const*) ;
 struct inode* d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int inc_nlink (struct inode*) ;
 struct inode* sel_make_inode (int ,int) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static struct dentry *sel_make_dir(struct dentry *dir, const char *name,
   unsigned long *ino)
{
 struct dentry *dentry = d_alloc_name(dir, name);
 struct inode *inode;

 if (!dentry)
  return ERR_PTR(-ENOMEM);

 inode = sel_make_inode(dir->d_sb, S_IFDIR | S_IRUGO | S_IXUGO);
 if (!inode) {
  dput(dentry);
  return ERR_PTR(-ENOMEM);
 }

 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;
 inode->i_ino = ++(*ino);

 inc_nlink(inode);
 d_add(dentry, inode);

 inc_nlink(d_inode(dir));

 return dentry;
}
