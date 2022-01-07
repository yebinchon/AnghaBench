
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfs_subversion {TYPE_3__* rpc_ops; } ;
struct TYPE_10__ {scalar_t__ minor; scalar_t__ major; } ;
struct nfs_server {scalar_t__ namelen; int mount_time; TYPE_5__ fsid; int caps; TYPE_2__* nfs_client; int cred; } ;
struct nfs_mount_info {int mntfh; TYPE_4__* parsed; } ;
struct nfs_fattr {int valid; int fsid; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int (* getattr ) (struct nfs_server*,int ,struct nfs_fattr*,int *,int *) ;} ;
struct TYPE_7__ {TYPE_1__* rpc_ops; } ;
struct TYPE_6__ {int version; } ;


 int ENOMEM ;
 struct nfs_server* ERR_PTR (int) ;
 scalar_t__ NFS2_MAXNAMLEN ;
 scalar_t__ NFS3_MAXNAMLEN ;
 int NFS_ATTR_FATTR ;
 int NFS_CAP_READDIRPLUS ;
 int NFS_MOUNT_NORDIRPLUS ;
 int current_cred () ;
 int dprintk (char*,unsigned long long,...) ;
 int get_cred (int ) ;
 int jiffies ;
 int memcpy (TYPE_5__*,int *,int) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 struct nfs_server* nfs_alloc_server () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_free_server (struct nfs_server*) ;
 int nfs_init_server (struct nfs_server*,TYPE_4__*,struct nfs_subversion*) ;
 int nfs_probe_fsinfo (struct nfs_server*,int ,struct nfs_fattr*) ;
 int nfs_server_insert_lists (struct nfs_server*) ;
 int stub1 (struct nfs_server*,int ,struct nfs_fattr*,int *,int *) ;

struct nfs_server *nfs_create_server(struct nfs_mount_info *mount_info,
         struct nfs_subversion *nfs_mod)
{
 struct nfs_server *server;
 struct nfs_fattr *fattr;
 int error;

 server = nfs_alloc_server();
 if (!server)
  return ERR_PTR(-ENOMEM);

 server->cred = get_cred(current_cred());

 error = -ENOMEM;
 fattr = nfs_alloc_fattr();
 if (fattr == ((void*)0))
  goto error;


 error = nfs_init_server(server, mount_info->parsed, nfs_mod);
 if (error < 0)
  goto error;


 error = nfs_probe_fsinfo(server, mount_info->mntfh, fattr);
 if (error < 0)
  goto error;
 if (server->nfs_client->rpc_ops->version == 3) {
  if (server->namelen == 0 || server->namelen > NFS3_MAXNAMLEN)
   server->namelen = NFS3_MAXNAMLEN;
  if (!(mount_info->parsed->flags & NFS_MOUNT_NORDIRPLUS))
   server->caps |= NFS_CAP_READDIRPLUS;
 } else {
  if (server->namelen == 0 || server->namelen > NFS2_MAXNAMLEN)
   server->namelen = NFS2_MAXNAMLEN;
 }

 if (!(fattr->valid & NFS_ATTR_FATTR)) {
  error = nfs_mod->rpc_ops->getattr(server, mount_info->mntfh,
    fattr, ((void*)0), ((void*)0));
  if (error < 0) {
   dprintk("nfs_create_server: getattr error = %d\n", -error);
   goto error;
  }
 }
 memcpy(&server->fsid, &fattr->fsid, sizeof(server->fsid));

 dprintk("Server FSID: %llx:%llx\n",
  (unsigned long long) server->fsid.major,
  (unsigned long long) server->fsid.minor);

 nfs_server_insert_lists(server);
 server->mount_time = jiffies;
 nfs_free_fattr(fattr);
 return server;

error:
 nfs_free_fattr(fattr);
 nfs_free_server(server);
 return ERR_PTR(error);
}
