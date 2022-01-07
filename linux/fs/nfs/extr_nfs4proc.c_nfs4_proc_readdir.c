
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 int NFS_SERVER (int ) ;
 int _nfs4_proc_readdir (struct dentry*,struct cred const*,int ,struct page**,unsigned int,int) ;
 int d_inode (struct dentry*) ;
 int nfs4_handle_exception (int ,int,struct nfs4_exception*) ;
 int trace_nfs4_readdir (int ,int) ;

__attribute__((used)) static int nfs4_proc_readdir(struct dentry *dentry, const struct cred *cred,
  u64 cookie, struct page **pages, unsigned int count, bool plus)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 int err;
 do {
  err = _nfs4_proc_readdir(dentry, cred, cookie,
    pages, count, plus);
  trace_nfs4_readdir(d_inode(dentry), err);
  err = nfs4_handle_exception(NFS_SERVER(d_inode(dentry)), err,
    &exception);
 } while (exception.retry);
 return err;
}
