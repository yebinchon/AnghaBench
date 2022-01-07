
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {scalar_t__ client; TYPE_1__* nfs_client; } ;
struct nfs_fsinfo {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct TYPE_2__ {scalar_t__ cl_rpcclient; } ;


 int do_proc_fsinfo (scalar_t__,struct nfs_fh*,struct nfs_fsinfo*) ;

__attribute__((used)) static int
nfs3_proc_fsinfo(struct nfs_server *server, struct nfs_fh *fhandle,
     struct nfs_fsinfo *info)
{
 int status;

 status = do_proc_fsinfo(server->client, fhandle, info);
 if (status && server->nfs_client->cl_rpcclient != server->client)
  status = do_proc_fsinfo(server->nfs_client->cl_rpcclient, fhandle, info);
 return status;
}
