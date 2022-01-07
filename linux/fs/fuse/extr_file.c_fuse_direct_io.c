
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {int should_dirty; int async; TYPE_1__* iocb; } ;
struct TYPE_8__ {int write_flags; } ;
struct TYPE_9__ {TYPE_3__ in; } ;
struct fuse_io_args {int ap; TYPE_4__ write; struct fuse_io_priv* io; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {size_t max_write; size_t max_read; int max_pages; } ;
struct file {struct fuse_file* private_data; TYPE_2__* f_mapping; } ;
typedef size_t ssize_t ;
typedef size_t pgoff_t ;
typedef size_t loff_t ;
typedef int fl_owner_t ;
struct TYPE_10__ {int files; } ;
struct TYPE_7__ {struct inode* host; } ;
struct TYPE_6__ {struct file* ki_filp; } ;


 int CAP_FSETID ;
 size_t ENOMEM ;
 int FUSE_DIO_CUSE ;
 int FUSE_DIO_WRITE ;
 int FUSE_WRITE_KILL_PRIV ;
 size_t PAGE_SHIFT ;
 int WARN_ON (int) ;
 int capable (int ) ;
 TYPE_5__* current ;
 int fuse_get_user_pages (int *,struct iov_iter*,size_t*,int,unsigned int) ;
 struct fuse_io_args* fuse_io_alloc (struct fuse_io_priv*,unsigned int) ;
 int fuse_io_free (struct fuse_io_args*) ;
 scalar_t__ fuse_range_is_writeback (struct inode*,size_t,size_t) ;
 int fuse_release_user_pages (int *,int) ;
 size_t fuse_send_read (struct fuse_io_args*,size_t,size_t,int ) ;
 size_t fuse_send_write (struct fuse_io_args*,size_t,size_t,int ) ;
 int fuse_sync_writes (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 unsigned int iov_iter_npages (struct iov_iter*,int ) ;
 scalar_t__ iter_is_iovec (struct iov_iter*) ;
 size_t min (size_t,size_t) ;

ssize_t fuse_direct_io(struct fuse_io_priv *io, struct iov_iter *iter,
         loff_t *ppos, int flags)
{
 int write = flags & FUSE_DIO_WRITE;
 int cuse = flags & FUSE_DIO_CUSE;
 struct file *file = io->iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;
 size_t nmax = write ? fc->max_write : fc->max_read;
 loff_t pos = *ppos;
 size_t count = iov_iter_count(iter);
 pgoff_t idx_from = pos >> PAGE_SHIFT;
 pgoff_t idx_to = (pos + count - 1) >> PAGE_SHIFT;
 ssize_t res = 0;
 int err = 0;
 struct fuse_io_args *ia;
 unsigned int max_pages;

 max_pages = iov_iter_npages(iter, fc->max_pages);
 ia = fuse_io_alloc(io, max_pages);
 if (!ia)
  return -ENOMEM;

 ia->io = io;
 if (!cuse && fuse_range_is_writeback(inode, idx_from, idx_to)) {
  if (!write)
   inode_lock(inode);
  fuse_sync_writes(inode);
  if (!write)
   inode_unlock(inode);
 }

 io->should_dirty = !write && iter_is_iovec(iter);
 while (count) {
  ssize_t nres;
  fl_owner_t owner = current->files;
  size_t nbytes = min(count, nmax);

  err = fuse_get_user_pages(&ia->ap, iter, &nbytes, write,
       max_pages);
  if (err && !nbytes)
   break;

  if (write) {
   if (!capable(CAP_FSETID))
    ia->write.in.write_flags |= FUSE_WRITE_KILL_PRIV;

   nres = fuse_send_write(ia, pos, nbytes, owner);
  } else {
   nres = fuse_send_read(ia, pos, nbytes, owner);
  }

  if (!io->async || nres < 0) {
   fuse_release_user_pages(&ia->ap, io->should_dirty);
   fuse_io_free(ia);
  }
  ia = ((void*)0);
  if (nres < 0) {
   err = nres;
   break;
  }
  WARN_ON(nres > nbytes);

  count -= nres;
  res += nres;
  pos += nres;
  if (nres != nbytes)
   break;
  if (count) {
   max_pages = iov_iter_npages(iter, fc->max_pages);
   ia = fuse_io_alloc(io, max_pages);
   if (!ia)
    break;
  }
 }
 if (ia)
  fuse_io_free(ia);
 if (res > 0)
  *ppos = pos;

 return res > 0 ? res : err;
}
