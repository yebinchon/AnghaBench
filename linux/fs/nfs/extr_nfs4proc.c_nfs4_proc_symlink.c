
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int d_name; } ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_symlink (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*,struct nfs4_label*) ;
 int nfs4_handle_exception (int ,int,struct nfs4_exception*) ;
 struct nfs4_label* nfs4_label_init_security (struct inode*,struct dentry*,struct iattr*,struct nfs4_label*) ;
 int nfs4_label_release_security (struct nfs4_label*) ;
 int trace_nfs4_symlink (struct inode*,int *,int) ;

__attribute__((used)) static int nfs4_proc_symlink(struct inode *dir, struct dentry *dentry,
  struct page *page, unsigned int len, struct iattr *sattr)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 struct nfs4_label l, *label = ((void*)0);
 int err;

 label = nfs4_label_init_security(dir, dentry, sattr, &l);

 do {
  err = _nfs4_proc_symlink(dir, dentry, page, len, sattr, label);
  trace_nfs4_symlink(dir, &dentry->d_name, err);
  err = nfs4_handle_exception(NFS_SERVER(dir), err,
    &exception);
 } while (exception.retry);

 nfs4_label_release_security(label);
 return err;
}
