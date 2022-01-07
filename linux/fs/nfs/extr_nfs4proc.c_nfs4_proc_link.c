
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_link (struct inode*,struct inode*,struct qstr const*) ;
 int nfs4_handle_exception (int ,int ,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_link(struct inode *inode, struct inode *dir, const struct qstr *name)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 int err;
 do {
  err = nfs4_handle_exception(NFS_SERVER(inode),
    _nfs4_proc_link(inode, dir, name),
    &exception);
 } while (exception.retry);
 return err;
}
