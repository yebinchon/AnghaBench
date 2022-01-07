
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_readlink (struct inode*,struct page*,unsigned int,unsigned int) ;
 int nfs4_handle_exception (int ,int,struct nfs4_exception*) ;
 int trace_nfs4_readlink (struct inode*,int) ;

__attribute__((used)) static int nfs4_proc_readlink(struct inode *inode, struct page *page,
  unsigned int pgbase, unsigned int pglen)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 int err;
 do {
  err = _nfs4_proc_readlink(inode, page, pgbase, pglen);
  trace_nfs4_readlink(inode, err);
  err = nfs4_handle_exception(NFS_SERVER(inode), err,
    &exception);
 } while (exception.retry);
 return err;
}
