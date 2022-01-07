
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_ns_operations {int name; } ;
struct inode {int i_ino; } ;
struct dentry {struct proc_ns_operations* d_fsdata; } ;


 struct inode* d_inode (struct dentry*) ;
 char* dynamic_dname (struct dentry*,char*,int,char*,int ,int ) ;

__attribute__((used)) static char *ns_dname(struct dentry *dentry, char *buffer, int buflen)
{
 struct inode *inode = d_inode(dentry);
 const struct proc_ns_operations *ns_ops = dentry->d_fsdata;

 return dynamic_dname(dentry, buffer, buflen, "%s:[%lu]",
  ns_ops->name, inode->i_ino);
}
