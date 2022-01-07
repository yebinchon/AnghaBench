
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_lookupp (struct inode*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;
 int nfs4_handle_exception (int ,int,struct nfs4_exception*) ;
 int trace_nfs4_lookupp (struct inode*,int) ;

__attribute__((used)) static int nfs4_proc_lookupp(struct inode *inode, struct nfs_fh *fhandle,
        struct nfs_fattr *fattr, struct nfs4_label *label)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 int err;
 do {
  err = _nfs4_proc_lookupp(inode, fhandle, fattr, label);
  trace_nfs4_lookupp(inode, err);
  err = nfs4_handle_exception(NFS_SERVER(inode), err,
    &exception);
 } while (exception.retry);
 return err;
}
