
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ WRITE ;
 int blockdev_direct_IO (struct kiocb*,struct inode*,struct iov_iter*,int ) ;
 struct inode* file_inode (int ) ;
 scalar_t__ iov_iter_rw (struct iov_iter*) ;
 int nilfs_get_block ;

__attribute__((used)) static ssize_t
nilfs_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
{
 struct inode *inode = file_inode(iocb->ki_filp);

 if (iov_iter_rw(iter) == WRITE)
  return 0;


 return blockdev_direct_IO(iocb, inode, iter, nilfs_get_block);
}
