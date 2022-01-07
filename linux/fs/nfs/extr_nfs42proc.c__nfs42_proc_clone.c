
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs42_clone_res* rpc_resp; struct nfs42_clone_args* rpc_argp; } ;
struct nfs_server {int client; int cache_consistency_bitmask; } ;
struct nfs_lock_context {int open_context; } ;
struct nfs42_clone_res {int dst_fattr; int seq_res; struct nfs_server* server; } ;
struct nfs42_clone_args {int seq_args; int dst_stateid; int src_stateid; int dst_bitmask; int count; int dst_offset; int src_offset; int dst_fh; int src_fh; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int kfree (int ) ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int nfs4_set_rw_stateid (int *,int ,struct nfs_lock_context*,int ) ;
 int nfs_alloc_fattr () ;
 int nfs_post_op_update_inode (struct inode*,int ) ;

__attribute__((used)) static int _nfs42_proc_clone(struct rpc_message *msg, struct file *src_f,
  struct file *dst_f, struct nfs_lock_context *src_lock,
  struct nfs_lock_context *dst_lock, loff_t src_offset,
  loff_t dst_offset, loff_t count)
{
 struct inode *src_inode = file_inode(src_f);
 struct inode *dst_inode = file_inode(dst_f);
 struct nfs_server *server = NFS_SERVER(dst_inode);
 struct nfs42_clone_args args = {
  .src_fh = NFS_FH(src_inode),
  .dst_fh = NFS_FH(dst_inode),
  .src_offset = src_offset,
  .dst_offset = dst_offset,
  .count = count,
  .dst_bitmask = server->cache_consistency_bitmask,
 };
 struct nfs42_clone_res res = {
  .server = server,
 };
 int status;

 msg->rpc_argp = &args;
 msg->rpc_resp = &res;

 status = nfs4_set_rw_stateid(&args.src_stateid, src_lock->open_context,
   src_lock, FMODE_READ);
 if (status)
  return status;

 status = nfs4_set_rw_stateid(&args.dst_stateid, dst_lock->open_context,
   dst_lock, FMODE_WRITE);
 if (status)
  return status;

 res.dst_fattr = nfs_alloc_fattr();
 if (!res.dst_fattr)
  return -ENOMEM;

 status = nfs4_call_sync(server->client, server, msg,
    &args.seq_args, &res.seq_res, 0);
 if (status == 0)
  status = nfs_post_op_update_inode(dst_inode, res.dst_fattr);

 kfree(res.dst_fattr);
 return status;
}
