
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;


 int NF4DIR ;
 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_remove (struct inode*,struct qstr const*,int ) ;
 int nfs4_handle_exception (int ,int,struct nfs4_exception*) ;
 int trace_nfs4_remove (struct inode*,struct qstr const*,int) ;

__attribute__((used)) static int nfs4_proc_rmdir(struct inode *dir, const struct qstr *name)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 int err;

 do {
  err = _nfs4_proc_remove(dir, name, NF4DIR);
  trace_nfs4_remove(dir, name, err);
  err = nfs4_handle_exception(NFS_SERVER(dir), err,
    &exception);
 } while (exception.retry);
 return err;
}
