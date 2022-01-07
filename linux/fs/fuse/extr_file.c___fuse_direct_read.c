
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {TYPE_1__* iocb; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int ki_filp; } ;


 struct inode* file_inode (int ) ;
 int fuse_direct_io (struct fuse_io_priv*,struct iov_iter*,int *,int ) ;
 int fuse_invalidate_atime (struct inode*) ;

__attribute__((used)) static ssize_t __fuse_direct_read(struct fuse_io_priv *io,
      struct iov_iter *iter,
      loff_t *ppos)
{
 ssize_t res;
 struct inode *inode = file_inode(io->iocb->ki_filp);

 res = fuse_direct_io(io, iter, ppos, 0);

 fuse_invalidate_atime(inode);

 return res;
}
