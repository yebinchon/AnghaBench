
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {scalar_t__ namelen; int mount_time; TYPE_2__* client; int fsid; TYPE_1__* nfs_client; int destroy; int cred; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int fsid; } ;
typedef int rpc_authflavor_t ;
struct TYPE_4__ {int cl_timeout; } ;
struct TYPE_3__ {int cl_count; } ;


 int ENOMEM ;
 struct nfs_server* ERR_PTR (int) ;
 scalar_t__ NFS4_MAXNAMLEN ;
 int get_cred (int ) ;
 int jiffies ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 struct nfs_server* nfs_alloc_server () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_free_server (struct nfs_server*) ;
 int nfs_init_server_rpcclient (struct nfs_server*,int ,int ) ;
 int nfs_probe_fsinfo (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ;
 int nfs_server_copy_userdata (struct nfs_server*,struct nfs_server*) ;
 int nfs_server_insert_lists (struct nfs_server*) ;
 int nfs_start_lockd (struct nfs_server*) ;
 int refcount_inc (int *) ;

struct nfs_server *nfs_clone_server(struct nfs_server *source,
        struct nfs_fh *fh,
        struct nfs_fattr *fattr,
        rpc_authflavor_t flavor)
{
 struct nfs_server *server;
 struct nfs_fattr *fattr_fsinfo;
 int error;

 server = nfs_alloc_server();
 if (!server)
  return ERR_PTR(-ENOMEM);

 server->cred = get_cred(source->cred);

 error = -ENOMEM;
 fattr_fsinfo = nfs_alloc_fattr();
 if (fattr_fsinfo == ((void*)0))
  goto out_free_server;


 server->nfs_client = source->nfs_client;
 server->destroy = source->destroy;
 refcount_inc(&server->nfs_client->cl_count);
 nfs_server_copy_userdata(server, source);

 server->fsid = fattr->fsid;

 error = nfs_init_server_rpcclient(server,
   source->client->cl_timeout,
   flavor);
 if (error < 0)
  goto out_free_server;


 error = nfs_probe_fsinfo(server, fh, fattr_fsinfo);
 if (error < 0)
  goto out_free_server;

 if (server->namelen == 0 || server->namelen > NFS4_MAXNAMLEN)
  server->namelen = NFS4_MAXNAMLEN;

 error = nfs_start_lockd(server);
 if (error < 0)
  goto out_free_server;

 nfs_server_insert_lists(server);
 server->mount_time = jiffies;

 nfs_free_fattr(fattr_fsinfo);
 return server;

out_free_server:
 nfs_free_fattr(fattr_fsinfo);
 nfs_free_server(server);
 return ERR_PTR(error);
}
