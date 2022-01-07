
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct nfs_server {int caps; } ;
struct nfs_lock_context {TYPE_1__* open_context; } ;
struct nfs4_exception {scalar_t__ retry; int state; struct inode* inode; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int state; } ;


 int ENOTSUPP ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct nfs_lock_context*) ;
 size_t NFSPROC4_CLNT_CLONE ;
 int NFS_CAP_CLONE ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int PTR_ERR (struct nfs_lock_context*) ;
 int _nfs42_proc_clone (struct rpc_message*,struct file*,struct file*,struct nfs_lock_context*,struct nfs_lock_context*,int ,int ,int ) ;
 struct inode* file_inode (struct file*) ;
 int nfs4_handle_exception (struct nfs_server*,int,struct nfs4_exception*) ;
 int * nfs4_procedures ;
 int nfs_file_open_context (struct file*) ;
 struct nfs_lock_context* nfs_get_lock_context (int ) ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;
 int nfs_server_capable (struct inode*,int ) ;

int nfs42_proc_clone(struct file *src_f, struct file *dst_f,
       loff_t src_offset, loff_t dst_offset, loff_t count)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_CLONE],
 };
 struct inode *inode = file_inode(src_f);
 struct nfs_server *server = NFS_SERVER(file_inode(src_f));
 struct nfs_lock_context *src_lock;
 struct nfs_lock_context *dst_lock;
 struct nfs4_exception src_exception = { };
 struct nfs4_exception dst_exception = { };
 int err, err2;

 if (!nfs_server_capable(inode, NFS_CAP_CLONE))
  return -EOPNOTSUPP;

 src_lock = nfs_get_lock_context(nfs_file_open_context(src_f));
 if (IS_ERR(src_lock))
  return PTR_ERR(src_lock);

 src_exception.inode = file_inode(src_f);
 src_exception.state = src_lock->open_context->state;

 dst_lock = nfs_get_lock_context(nfs_file_open_context(dst_f));
 if (IS_ERR(dst_lock)) {
  err = PTR_ERR(dst_lock);
  goto out_put_src_lock;
 }

 dst_exception.inode = file_inode(dst_f);
 dst_exception.state = dst_lock->open_context->state;

 do {
  err = _nfs42_proc_clone(&msg, src_f, dst_f, src_lock, dst_lock,
     src_offset, dst_offset, count);
  if (err == -ENOTSUPP || err == -EOPNOTSUPP) {
   NFS_SERVER(inode)->caps &= ~NFS_CAP_CLONE;
   err = -EOPNOTSUPP;
   break;
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
