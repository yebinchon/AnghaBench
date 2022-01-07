
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int PDE (struct inode*) ;
 struct dentry* proc_lookup_de (struct inode*,struct dentry*,int ) ;

struct dentry *proc_lookup(struct inode *dir, struct dentry *dentry,
  unsigned int flags)
{
 return proc_lookup_de(dir, dentry, PDE(dir));
}
