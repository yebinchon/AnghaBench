
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_commitres* rpc_resp; struct nfs_commitargs* rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; } ;
struct nfs_commitres {int seq_res; } ;
struct nfs_commitargs {int seq_args; int fh; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 size_t NFSPROC4_CLNT_COMMIT ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int) ;
 int * nfs4_procedures ;

__attribute__((used)) static int _nfs4_proc_commit(struct file *dst, struct nfs_commitargs *args,
    struct nfs_commitres *res)
{
 struct inode *dst_inode = file_inode(dst);
 struct nfs_server *server = NFS_SERVER(dst_inode);
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_COMMIT],
  .rpc_argp = args,
  .rpc_resp = res,
 };

 args->fh = NFS_FH(dst_inode);
 return nfs4_call_sync(server->client, server, &msg,
   &args->seq_args, &res->seq_res, 1);
}
