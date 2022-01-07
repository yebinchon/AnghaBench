
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_io_priv {int err; scalar_t__ bytes; int reqs; int refcnt; TYPE_1__* iocb; scalar_t__ blocking; int lock; int done; } ;
struct fuse_inode {int lock; int attr_version; } ;
struct fuse_conn {int attr_version; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int (* ki_complete ) (TYPE_1__*,scalar_t__,int ) ;int ki_filp; } ;


 int atomic64_inc_return (int *) ;
 int complete (int ) ;
 struct inode* file_inode (int ) ;
 scalar_t__ fuse_get_res_by_io (struct fuse_io_priv*) ;
 int fuse_io_release ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static void fuse_aio_complete(struct fuse_io_priv *io, int err, ssize_t pos)
{
 int left;

 spin_lock(&io->lock);
 if (err)
  io->err = io->err ? : err;
 else if (pos >= 0 && (io->bytes < 0 || pos < io->bytes))
  io->bytes = pos;

 left = --io->reqs;
 if (!left && io->blocking)
  complete(io->done);
 spin_unlock(&io->lock);

 if (!left && !io->blocking) {
  ssize_t res = fuse_get_res_by_io(io);

  if (res >= 0) {
   struct inode *inode = file_inode(io->iocb->ki_filp);
   struct fuse_conn *fc = get_fuse_conn(inode);
   struct fuse_inode *fi = get_fuse_inode(inode);

   spin_lock(&fi->lock);
   fi->attr_version = atomic64_inc_return(&fc->attr_version);
   spin_unlock(&fi->lock);
  }

  io->iocb->ki_complete(io->iocb, res, 0);
 }

 kref_put(&io->refcnt, fuse_io_release);
}
