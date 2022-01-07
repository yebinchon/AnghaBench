
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs2_fsstat* rpc_resp; struct nfs_fh* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; } ;
struct nfs_fsinfo {int maxfilesize; scalar_t__ lease_time; int dtpref; int wtmult; int wtpref; void* wtmax; int rtmult; int rtpref; void* rtmax; int fattr; } ;
struct nfs_fh {int dummy; } ;
struct nfs2_fsstat {int tsize; int bsize; } ;


 size_t NFSPROC_STATFS ;
 void* NFS_MAXDATA ;
 int dprintk (char*,...) ;
 int nfs_fattr_init (int ) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_fsinfo(struct nfs_server *server, struct nfs_fh *fhandle,
   struct nfs_fsinfo *info)
{
 struct nfs2_fsstat fsinfo;
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_STATFS],
  .rpc_argp = fhandle,
  .rpc_resp = &fsinfo,
 };
 int status;

 dprintk("NFS call  fsinfo\n");
 nfs_fattr_init(info->fattr);
 status = rpc_call_sync(server->client, &msg, 0);
 dprintk("NFS reply fsinfo: %d\n", status);
 if (status)
  goto out;
 info->rtmax = NFS_MAXDATA;
 info->rtpref = fsinfo.tsize;
 info->rtmult = fsinfo.bsize;
 info->wtmax = NFS_MAXDATA;
 info->wtpref = fsinfo.tsize;
 info->wtmult = fsinfo.bsize;
 info->dtpref = fsinfo.tsize;
 info->maxfilesize = 0x7FFFFFFF;
 info->lease_time = 0;
out:
 return status;
}
