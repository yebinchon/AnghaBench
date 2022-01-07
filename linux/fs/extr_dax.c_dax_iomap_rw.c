
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {scalar_t__ ki_pos; TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct iomap_ops {int dummy; } ;
struct inode {int i_rwsem; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;


 unsigned int IOMAP_WRITE ;
 scalar_t__ WRITE ;
 int dax_iomap_actor ;
 scalar_t__ iomap_apply (struct inode*,scalar_t__,scalar_t__,unsigned int,struct iomap_ops const*,struct iov_iter*,int ) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 scalar_t__ iov_iter_rw (struct iov_iter*) ;
 int lockdep_assert_held (int *) ;
 int lockdep_assert_held_write (int *) ;

ssize_t
dax_iomap_rw(struct kiocb *iocb, struct iov_iter *iter,
  const struct iomap_ops *ops)
{
 struct address_space *mapping = iocb->ki_filp->f_mapping;
 struct inode *inode = mapping->host;
 loff_t pos = iocb->ki_pos, ret = 0, done = 0;
 unsigned flags = 0;

 if (iov_iter_rw(iter) == WRITE) {
  lockdep_assert_held_write(&inode->i_rwsem);
  flags |= IOMAP_WRITE;
 } else {
  lockdep_assert_held(&inode->i_rwsem);
 }

 while (iov_iter_count(iter)) {
  ret = iomap_apply(inode, pos, iov_iter_count(iter), flags, ops,
    iter, dax_iomap_actor);
  if (ret <= 0)
   break;
  pos += ret;
  done += ret;
 }

 iocb->ki_pos += done;
 return done ? done : ret;
}
