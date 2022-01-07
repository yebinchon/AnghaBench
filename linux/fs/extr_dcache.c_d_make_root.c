
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 struct dentry* d_alloc_anon (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int iput (struct inode*) ;

struct dentry *d_make_root(struct inode *root_inode)
{
 struct dentry *res = ((void*)0);

 if (root_inode) {
  res = d_alloc_anon(root_inode->i_sb);
  if (res)
   d_instantiate(res, root_inode);
  else
   iput(root_inode);
 }
 return res;
}
