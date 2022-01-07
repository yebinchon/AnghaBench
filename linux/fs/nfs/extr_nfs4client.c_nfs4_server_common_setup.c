
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ minor; scalar_t__ major; } ;
struct nfs_server {int flags; scalar_t__ namelen; int destroy; int mount_time; TYPE_4__ fsid; int caps; TYPE_3__* client; TYPE_5__* nfs_client; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct TYPE_11__ {TYPE_1__* cl_mvops; } ;
struct TYPE_9__ {TYPE_2__* cl_auth; } ;
struct TYPE_8__ {scalar_t__ au_flavor; } ;
struct TYPE_7__ {int init_caps; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 scalar_t__ NFS4_MAXNAMLEN ;
 int NFS_CAP_READDIRPLUS ;
 int NFS_CAP_UIDGID_NOMAP ;
 int NFS_MOUNT_NORDIRPLUS ;
 scalar_t__ RPC_AUTH_UNIX ;
 int dprintk (char*,unsigned long long,unsigned long long) ;
 scalar_t__ is_ds_only_client (TYPE_5__*) ;
 int jiffies ;
 int nfs4_destroy_server ;
 scalar_t__ nfs4_disable_idmapping ;
 int nfs4_get_rootfh (struct nfs_server*,struct nfs_fh*,int) ;
 int nfs4_init_session (TYPE_5__*) ;
 int nfs4_session_limit_rwsize (struct nfs_server*) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 int nfs_display_fhandle (struct nfs_fh*,char*) ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_probe_fsinfo (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ;
 int nfs_server_insert_lists (struct nfs_server*) ;

__attribute__((used)) static int nfs4_server_common_setup(struct nfs_server *server,
  struct nfs_fh *mntfh, bool auth_probe)
{
 struct nfs_fattr *fattr;
 int error;


 if (is_ds_only_client(server->nfs_client))
  return -EPROTONOSUPPORT;

 fattr = nfs_alloc_fattr();
 if (fattr == ((void*)0))
  return -ENOMEM;


 error = nfs4_init_session(server->nfs_client);
 if (error < 0)
  goto out;


 server->caps |= server->nfs_client->cl_mvops->init_caps;
 if (server->flags & NFS_MOUNT_NORDIRPLUS)
   server->caps &= ~NFS_CAP_READDIRPLUS;




 if (nfs4_disable_idmapping &&
   server->client->cl_auth->au_flavor == RPC_AUTH_UNIX)
  server->caps |= NFS_CAP_UIDGID_NOMAP;



 error = nfs4_get_rootfh(server, mntfh, auth_probe);
 if (error < 0)
  goto out;

 dprintk("Server FSID: %llx:%llx\n",
   (unsigned long long) server->fsid.major,
   (unsigned long long) server->fsid.minor);
 nfs_display_fhandle(mntfh, "Pseudo-fs root FH");

 error = nfs_probe_fsinfo(server, mntfh, fattr);
 if (error < 0)
  goto out;

 nfs4_session_limit_rwsize(server);

 if (server->namelen == 0 || server->namelen > NFS4_MAXNAMLEN)
  server->namelen = NFS4_MAXNAMLEN;

 nfs_server_insert_lists(server);
 server->mount_time = jiffies;
 server->destroy = nfs4_destroy_server;
out:
 nfs_free_fattr(fattr);
 return error;
}
