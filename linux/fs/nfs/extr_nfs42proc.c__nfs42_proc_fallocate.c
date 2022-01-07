
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs42_falloc_res* rpc_resp; struct nfs42_falloc_args* rpc_argp; } ;
struct nfs_server {int client; int cache_consistency_bitmask; } ;
struct nfs_lock_context {int open_context; } ;
struct nfs42_falloc_res {int falloc_fattr; int seq_res; struct nfs_server* falloc_server; } ;
struct nfs42_falloc_args {int seq_args; int falloc_stateid; int falloc_bitmask; int falloc_length; int falloc_offset; int falloc_fh; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 int ENOMEM ;
 int FMODE_WRITE ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int kfree (int ) ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int nfs4_set_rw_stateid (int *,int ,struct nfs_lock_context*,int ) ;
 int nfs_alloc_fattr () ;
 int nfs_post_op_update_inode (struct inode*,int ) ;

__attribute__((used)) static int _nfs42_proc_fallocate(struct rpc_message *msg, struct file *filep,
  struct nfs_lock_context *lock, loff_t offset, loff_t len)
{
 struct inode *inode = file_inode(filep);
 struct nfs_server *server = NFS_SERVER(inode);
 struct nfs42_falloc_args args = {
  .falloc_fh = NFS_FH(inode),
  .falloc_offset = offset,
  .falloc_length = len,
  .falloc_bitmask = server->cache_consistency_bitmask,
 };
 struct nfs42_falloc_res res = {
  .falloc_server = server,
 };
 int status;

 msg->rpc_argp = &args;
 msg->rpc_resp = &res;

 status = nfs4_set_rw_stateid(&args.falloc_stateid, lock->open_context,
   lock, FMODE_WRITE);
 if (status)
  return status;

 res.falloc_fattr = nfs_alloc_fattr();
 if (!res.falloc_fattr)
  return -ENOMEM;

 status = nfs4_call_sync(server->client, server, msg,
    &args.seq_args, &res.seq_res, 0);
 if (status == 0)
  status = nfs_post_op_update_inode(inode, res.falloc_fattr);

 kfree(res.falloc_fattr);
 return status;
}
