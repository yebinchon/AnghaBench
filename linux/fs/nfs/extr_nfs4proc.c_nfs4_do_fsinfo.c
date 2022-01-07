
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int nfs_client; } ;
struct nfs_fsinfo {int lease_time; int fattr; } ;
struct nfs_fh {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;


 int HZ ;
 int _nfs4_do_fsinfo (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;
 unsigned long jiffies ;
 int nfs4_handle_exception (struct nfs_server*,int,struct nfs4_exception*) ;
 int nfs4_set_lease_period (int ,int,unsigned long) ;
 int trace_nfs4_fsinfo (struct nfs_server*,struct nfs_fh*,int ,int) ;

__attribute__((used)) static int nfs4_do_fsinfo(struct nfs_server *server, struct nfs_fh *fhandle, struct nfs_fsinfo *fsinfo)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 unsigned long now = jiffies;
 int err;

 do {
  err = _nfs4_do_fsinfo(server, fhandle, fsinfo);
  trace_nfs4_fsinfo(server, fhandle, fsinfo->fattr, err);
  if (err == 0) {
   nfs4_set_lease_period(server->nfs_client,
     fsinfo->lease_time * HZ,
     now);
   break;
  }
  err = nfs4_handle_exception(server, err, &exception);
 } while (exception.retry);
 return err;
}
