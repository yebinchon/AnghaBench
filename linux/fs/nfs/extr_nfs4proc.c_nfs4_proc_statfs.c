
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_fsstat {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;


 int _nfs4_proc_statfs (struct nfs_server*,struct nfs_fh*,struct nfs_fsstat*) ;
 int nfs4_handle_exception (struct nfs_server*,int ,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_statfs(struct nfs_server *server, struct nfs_fh *fhandle, struct nfs_fsstat *fsstat)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 int err;
 do {
  err = nfs4_handle_exception(server,
    _nfs4_proc_statfs(server, fhandle, fsstat),
    &exception);
 } while (exception.retry);
 return err;
}
