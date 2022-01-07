
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int i_nlink; } ;
struct dentry {int d_name; } ;


 int NF4REG ;
 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_remove (struct inode*,int *,int ) ;
 struct inode* d_inode (struct dentry*) ;
 int nfs4_handle_exception (int ,int,struct nfs4_exception*) ;
 int nfs4_inode_make_writeable (struct inode*) ;
 int nfs4_inode_return_delegation (struct inode*) ;
 int trace_nfs4_remove (struct inode*,int *,int) ;

__attribute__((used)) static int nfs4_proc_remove(struct inode *dir, struct dentry *dentry)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 struct inode *inode = d_inode(dentry);
 int err;

 if (inode) {
  if (inode->i_nlink == 1)
   nfs4_inode_return_delegation(inode);
  else
   nfs4_inode_make_writeable(inode);
 }
 do {
  err = _nfs4_proc_remove(dir, &dentry->d_name, NF4REG);
  trace_nfs4_remove(dir, &dentry->d_name, err);
  err = nfs4_handle_exception(NFS_SERVER(dir), err,
    &exception);
 } while (exception.retry);
 return err;
}
