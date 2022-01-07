
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;


 int _nfs4_server_capabilities (struct nfs_server*,struct nfs_fh*) ;
 int nfs4_handle_exception (struct nfs_server*,int ,struct nfs4_exception*) ;

int nfs4_server_capabilities(struct nfs_server *server, struct nfs_fh *fhandle)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 int err;
 do {
  err = nfs4_handle_exception(server,
    _nfs4_server_capabilities(server, fhandle),
    &exception);
 } while (exception.retry);
 return err;
}
