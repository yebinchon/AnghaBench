
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {int proc_dops; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int d_set_d_op (struct dentry*,int ) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int pde_get (struct proc_dir_entry*) ;
 struct proc_dir_entry* pde_subdir_find (struct proc_dir_entry*,int ,int ) ;
 struct inode* proc_get_inode (int ,struct proc_dir_entry*) ;
 int proc_subdir_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct dentry *proc_lookup_de(struct inode *dir, struct dentry *dentry,
         struct proc_dir_entry *de)
{
 struct inode *inode;

 read_lock(&proc_subdir_lock);
 de = pde_subdir_find(de, dentry->d_name.name, dentry->d_name.len);
 if (de) {
  pde_get(de);
  read_unlock(&proc_subdir_lock);
  inode = proc_get_inode(dir->i_sb, de);
  if (!inode)
   return ERR_PTR(-ENOMEM);
  d_set_d_op(dentry, de->proc_dops);
  return d_splice_alias(inode, dentry);
 }
 read_unlock(&proc_subdir_lock);
 return ERR_PTR(-ENOENT);
}
