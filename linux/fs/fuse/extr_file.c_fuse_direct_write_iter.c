
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; int ki_pos; int ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int FUSE_DIO_WRITE ;
 struct fuse_io_priv FUSE_IO_PRIV_SYNC (struct kiocb*) ;
 int IOCB_DIRECT ;
 struct inode* file_inode (int ) ;
 scalar_t__ fuse_direct_IO (struct kiocb*,struct iov_iter*) ;
 scalar_t__ fuse_direct_io (struct fuse_io_priv*,struct iov_iter*,int *,int ) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_write_update_size (struct inode*,int ) ;
 scalar_t__ generic_write_checks (struct kiocb*,struct iov_iter*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int is_sync_kiocb (struct kiocb*) ;

__attribute__((used)) static ssize_t fuse_direct_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct inode *inode = file_inode(iocb->ki_filp);
 struct fuse_io_priv io = FUSE_IO_PRIV_SYNC(iocb);
 ssize_t res;


 inode_lock(inode);
 res = generic_write_checks(iocb, from);
 if (res > 0) {
  if (!is_sync_kiocb(iocb) && iocb->ki_flags & IOCB_DIRECT) {
   res = fuse_direct_IO(iocb, from);
  } else {
   res = fuse_direct_io(&io, from, &iocb->ki_pos,
          FUSE_DIO_WRITE);
  }
 }
 fuse_invalidate_attr(inode);
 if (res > 0)
  fuse_write_update_size(inode, iocb->ki_pos);
 inode_unlock(inode);

 return res;
}
