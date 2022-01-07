
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rpc_message {struct cred const* rpc_cred; struct nfs4_fs_locations_res* rpc_resp; struct nfs4_fs_locations_arg* rpc_argp; int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct page {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; struct rpc_clnt* client; } ;
struct nfs4_fs_locations_res {int migration; int renew; int seq_res; struct nfs4_fs_locations* fs_locations; } ;
struct nfs4_fs_locations_arg {int* bitmask; int migration; int renew; int seq_args; struct page* page; int fh; int clientid; } ;
struct nfs4_fs_locations {scalar_t__ nlocations; struct nfs_server* server; int fattr; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int cl_clientid; } ;


 int FATTR4_WORD0_FSID ;
 int FATTR4_WORD0_FS_LOCATIONS ;
 size_t NFSPROC4_CLNT_FS_LOCATIONS ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 unsigned long jiffies ;
 int nfs4_call_sync_sequence (struct rpc_clnt*,struct nfs_server*,struct rpc_message*,int *,int *) ;
 int nfs4_init_sequence (int *,int *,int ,int) ;
 int * nfs4_procedures ;
 int nfs_fattr_init (int *) ;
 int renew_lease (struct nfs_server*,unsigned long) ;

__attribute__((used)) static int _nfs40_proc_get_locations(struct inode *inode,
         struct nfs4_fs_locations *locations,
         struct page *page, const struct cred *cred)
{
 struct nfs_server *server = NFS_SERVER(inode);
 struct rpc_clnt *clnt = server->client;
 u32 bitmask[2] = {
  [0] = FATTR4_WORD0_FSID | FATTR4_WORD0_FS_LOCATIONS,
 };
 struct nfs4_fs_locations_arg args = {
  .clientid = server->nfs_client->cl_clientid,
  .fh = NFS_FH(inode),
  .page = page,
  .bitmask = bitmask,
  .migration = 1,
  .renew = 1,
 };
 struct nfs4_fs_locations_res res = {
  .fs_locations = locations,
  .migration = 1,
  .renew = 1,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_FS_LOCATIONS],
  .rpc_argp = &args,
  .rpc_resp = &res,
  .rpc_cred = cred,
 };
 unsigned long now = jiffies;
 int status;

 nfs_fattr_init(&locations->fattr);
 locations->server = server;
 locations->nlocations = 0;

 nfs4_init_sequence(&args.seq_args, &res.seq_res, 0, 1);
 status = nfs4_call_sync_sequence(clnt, server, &msg,
     &args.seq_args, &res.seq_res);
 if (status)
  return status;

 renew_lease(server, now);
 return 0;
}
