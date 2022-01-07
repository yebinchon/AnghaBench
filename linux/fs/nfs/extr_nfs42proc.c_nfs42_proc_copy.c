
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct nfs_lock_context {TYPE_1__* open_context; } ;
struct nfs4_exception {int retry; int state; int * stateid; int inode; } ;
struct nfs42_copy_res {int dummy; } ;
struct nfs42_copy_args {size_t count; int sync; int dst_stateid; int src_stateid; int dst_pos; int dst_fh; int src_pos; int src_fh; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int state; } ;


 int EAGAIN ;
 int ENOTSUPP ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct nfs_lock_context*) ;
 int NFS4ERR_OFFLOAD_NO_REQS ;
 int NFS_FH (int ) ;
 struct nfs_server* NFS_SERVER (int ) ;
 int PTR_ERR (struct nfs_lock_context*) ;
 int _nfs42_proc_copy (struct file*,struct nfs_lock_context*,struct file*,struct nfs_lock_context*,struct nfs42_copy_args*,struct nfs42_copy_res*) ;
 int file_inode (struct file*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int nfs4_handle_exception (struct nfs_server*,int ,struct nfs4_exception*) ;
 int nfs_file_open_context (struct file*) ;
 struct nfs_lock_context* nfs_get_lock_context (int ) ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;

ssize_t nfs42_proc_copy(struct file *src, loff_t pos_src,
   struct file *dst, loff_t pos_dst,
   size_t count)
{
 struct nfs_server *server = NFS_SERVER(file_inode(dst));
 struct nfs_lock_context *src_lock;
 struct nfs_lock_context *dst_lock;
 struct nfs42_copy_args args = {
  .src_fh = NFS_FH(file_inode(src)),
  .src_pos = pos_src,
  .dst_fh = NFS_FH(file_inode(dst)),
  .dst_pos = pos_dst,
  .count = count,
  .sync = 0,
 };
 struct nfs42_copy_res res;
 struct nfs4_exception src_exception = {
  .inode = file_inode(src),
  .stateid = &args.src_stateid,
 };
 struct nfs4_exception dst_exception = {
  .inode = file_inode(dst),
  .stateid = &args.dst_stateid,
 };
 ssize_t err, err2;

 src_lock = nfs_get_lock_context(nfs_file_open_context(src));
 if (IS_ERR(src_lock))
  return PTR_ERR(src_lock);

 src_exception.state = src_lock->open_context->state;

 dst_lock = nfs_get_lock_context(nfs_file_open_context(dst));
 if (IS_ERR(dst_lock)) {
  err = PTR_ERR(dst_lock);
  goto out_put_src_lock;
 }

 dst_exception.state = dst_lock->open_context->state;

 do {
  inode_lock(file_inode(dst));
  err = _nfs42_proc_copy(src, src_lock,
    dst, dst_lock,
    &args, &res);
  inode_unlock(file_inode(dst));

  if (err >= 0)
   break;
  if (err == -ENOTSUPP) {
   err = -EOPNOTSUPP;
   break;
  } else if (err == -EAGAIN) {
   dst_exception.retry = 1;
   continue;
  } else if (err == -NFS4ERR_OFFLOAD_NO_REQS && !args.sync) {
   args.sync = 1;
   dst_exception.retry = 1;
   continue;
  }

  err2 = nfs4_handle_exception(server, err, &src_exception);
  err = nfs4_handle_exception(server, err, &dst_exception);
  if (!err)
   err = err2;
 } while (src_exception.retry || dst_exception.retry);

 nfs_put_lock_context(dst_lock);
out_put_src_lock:
 nfs_put_lock_context(src_lock);
 return err;
}
