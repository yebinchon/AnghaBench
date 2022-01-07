
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int * i_fop; int * i_op; int i_sb; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int bpf_dentry_finalize (struct dentry*,struct inode*,struct inode*) ;
 int bpf_dir_iops ;
 struct inode* bpf_get_inode (int ,struct inode*,int) ;
 int inc_nlink (struct inode*) ;
 int simple_dir_operations ;

__attribute__((used)) static int bpf_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 struct inode *inode;

 inode = bpf_get_inode(dir->i_sb, dir, mode | S_IFDIR);
 if (IS_ERR(inode))
  return PTR_ERR(inode);

 inode->i_op = &bpf_dir_iops;
 inode->i_fop = &simple_dir_operations;

 inc_nlink(inode);
 inc_nlink(dir);

 bpf_dentry_finalize(dentry, inode, dir);
 return 0;
}
