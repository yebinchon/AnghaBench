
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct nfs_lock_context {TYPE_1__* open_context; } ;
struct nfs4_exception {scalar_t__ retry; int state; int inode; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int state; } ;


 int ENOTSUPP ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct nfs_lock_context*) ;
 struct nfs_server* NFS_SERVER (int ) ;
 int PTR_ERR (struct nfs_lock_context*) ;
 int _nfs42_proc_llseek (struct file*,struct nfs_lock_context*,int ,int) ;
 int file_inode (struct file*) ;
 int nfs4_handle_exception (struct nfs_server*,int ,struct nfs4_exception*) ;
 int nfs_file_open_context (struct file*) ;
 struct nfs_lock_context* nfs_get_lock_context (int ) ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;

loff_t nfs42_proc_llseek(struct file *filep, loff_t offset, int whence)
{
 struct nfs_server *server = NFS_SERVER(file_inode(filep));
 struct nfs4_exception exception = { };
 struct nfs_lock_context *lock;
 loff_t err;

 lock = nfs_get_lock_context(nfs_file_open_context(filep));
 if (IS_ERR(lock))
  return PTR_ERR(lock);

 exception.inode = file_inode(filep);
 exception.state = lock->open_context->state;

 do {
  err = _nfs42_proc_llseek(filep, lock, offset, whence);
  if (err >= 0)
   break;
  if (err == -ENOTSUPP) {
   err = -EOPNOTSUPP;
   break;
  }
  err = nfs4_handle_exception(server, err, &exception);
 } while (exception.retry);

 nfs_put_lock_context(lock);
 return err;
}
