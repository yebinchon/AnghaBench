
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct rpc_message {struct nfs42_copy_res* rpc_resp; struct nfs42_copy_args* rpc_argp; int * rpc_proc; } ;
struct nfs_writeverf {int dummy; } ;
struct nfs_server {int caps; int client; } ;
struct nfs_lock_context {TYPE_5__* open_context; } ;
struct TYPE_11__ {TYPE_6__* verf; } ;
struct TYPE_9__ {scalar_t__ committed; int verifier; } ;
struct TYPE_10__ {size_t count; TYPE_2__ verifier; } ;
struct nfs42_copy_res {TYPE_4__ commit_res; TYPE_3__ write_res; int synchronous; int seq_res; } ;
struct nfs42_copy_args {size_t count; scalar_t__ sync; int src_stateid; int seq_args; int dst_stateid; scalar_t__ dst_pos; scalar_t__ src_pos; } ;
struct inode {int i_mapping; } ;
struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_13__ {int verifier; } ;
struct TYPE_12__ {TYPE_1__* state; } ;
struct TYPE_8__ {int flags; } ;


 size_t EAGAIN ;
 size_t ENOMEM ;
 size_t ENOTSUPP ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_NOFS ;
 size_t NFSPROC4_CLNT_COPY ;
 int NFS_CAP_COPY ;
 int NFS_CLNT_DST_SSC_COPY_STATE ;
 scalar_t__ NFS_FILE_SYNC ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 size_t handle_async_copy (struct nfs42_copy_res*,struct nfs_server*,struct file*,struct file*,int *) ;
 int kfree (TYPE_6__*) ;
 TYPE_6__* kzalloc (int,int ) ;
 size_t nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int ) ;
 int * nfs4_procedures ;
 size_t nfs4_set_rw_stateid (int *,TYPE_5__*,struct nfs_lock_context*,int ) ;
 size_t nfs_filemap_write_and_wait_range (int ,scalar_t__,scalar_t__) ;
 size_t nfs_sync_inode (struct inode*) ;
 scalar_t__ nfs_write_verifier_cmp (int *,int *) ;
 size_t process_copy_commit (struct file*,scalar_t__,struct nfs42_copy_res*) ;
 int set_bit (int ,int *) ;
 int truncate_pagecache_range (struct inode*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t _nfs42_proc_copy(struct file *src,
    struct nfs_lock_context *src_lock,
    struct file *dst,
    struct nfs_lock_context *dst_lock,
    struct nfs42_copy_args *args,
    struct nfs42_copy_res *res)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_COPY],
  .rpc_argp = args,
  .rpc_resp = res,
 };
 struct inode *dst_inode = file_inode(dst);
 struct nfs_server *server = NFS_SERVER(dst_inode);
 loff_t pos_src = args->src_pos;
 loff_t pos_dst = args->dst_pos;
 size_t count = args->count;
 ssize_t status;

 status = nfs4_set_rw_stateid(&args->src_stateid, src_lock->open_context,
         src_lock, FMODE_READ);
 if (status)
  return status;

 status = nfs_filemap_write_and_wait_range(file_inode(src)->i_mapping,
   pos_src, pos_src + (loff_t)count - 1);
 if (status)
  return status;

 status = nfs4_set_rw_stateid(&args->dst_stateid, dst_lock->open_context,
         dst_lock, FMODE_WRITE);
 if (status)
  return status;

 status = nfs_sync_inode(dst_inode);
 if (status)
  return status;

 res->commit_res.verf = ((void*)0);
 if (args->sync) {
  res->commit_res.verf =
   kzalloc(sizeof(struct nfs_writeverf), GFP_NOFS);
  if (!res->commit_res.verf)
   return -ENOMEM;
 }
 set_bit(NFS_CLNT_DST_SSC_COPY_STATE,
  &dst_lock->open_context->state->flags);

 status = nfs4_call_sync(server->client, server, &msg,
    &args->seq_args, &res->seq_res, 0);
 if (status == -ENOTSUPP)
  server->caps &= ~NFS_CAP_COPY;
 if (status)
  goto out;

 if (args->sync &&
  nfs_write_verifier_cmp(&res->write_res.verifier.verifier,
        &res->commit_res.verf->verifier)) {
  status = -EAGAIN;
  goto out;
 }

 if (!res->synchronous) {
  status = handle_async_copy(res, server, src, dst,
    &args->src_stateid);
  if (status)
   return status;
 }

 if ((!res->synchronous || !args->sync) &&
   res->write_res.verifier.committed != NFS_FILE_SYNC) {
  status = process_copy_commit(dst, pos_dst, res);
  if (status)
   return status;
 }

 truncate_pagecache_range(dst_inode, pos_dst,
     pos_dst + res->write_res.count);

 status = res->write_res.count;
out:
 if (args->sync)
  kfree(res->commit_res.verf);
 return status;
}
