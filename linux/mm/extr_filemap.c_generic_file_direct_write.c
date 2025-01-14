
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {size_t ki_pos; int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_mode; int i_mapping; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {scalar_t__ nrpages; TYPE_1__* a_ops; struct inode* host; } ;
typedef int ssize_t ;
typedef size_t pgoff_t ;
typedef size_t loff_t ;
struct TYPE_2__ {int (* direct_IO ) (struct kiocb*,struct iov_iter*) ;} ;


 int EAGAIN ;
 int EBUSY ;
 int IOCB_NOWAIT ;
 size_t PAGE_SHIFT ;
 int S_ISBLK (int ) ;
 scalar_t__ filemap_range_has_page (int ,size_t,size_t) ;
 int filemap_write_and_wait_range (struct address_space*,size_t,size_t) ;
 size_t i_size_read (struct inode*) ;
 int i_size_write (struct inode*,size_t) ;
 int invalidate_inode_pages2_range (struct address_space*,size_t,size_t) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int iov_iter_revert (struct iov_iter*,size_t) ;
 int mark_inode_dirty (struct inode*) ;
 int stub1 (struct kiocb*,struct iov_iter*) ;

ssize_t
generic_file_direct_write(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct address_space *mapping = file->f_mapping;
 struct inode *inode = mapping->host;
 loff_t pos = iocb->ki_pos;
 ssize_t written;
 size_t write_len;
 pgoff_t end;

 write_len = iov_iter_count(from);
 end = (pos + write_len - 1) >> PAGE_SHIFT;

 if (iocb->ki_flags & IOCB_NOWAIT) {

  if (filemap_range_has_page(inode->i_mapping, pos,
        pos + write_len - 1))
   return -EAGAIN;
 } else {
  written = filemap_write_and_wait_range(mapping, pos,
       pos + write_len - 1);
  if (written)
   goto out;
 }







 written = invalidate_inode_pages2_range(mapping,
     pos >> PAGE_SHIFT, end);




 if (written) {
  if (written == -EBUSY)
   return 0;
  goto out;
 }

 written = mapping->a_ops->direct_IO(iocb, from);
 if (mapping->nrpages)
  invalidate_inode_pages2_range(mapping,
     pos >> PAGE_SHIFT, end);

 if (written > 0) {
  pos += written;
  write_len -= written;
  if (pos > i_size_read(inode) && !S_ISBLK(inode->i_mode)) {
   i_size_write(inode, pos);
   mark_inode_dirty(inode);
  }
  iocb->ki_pos = pos;
 }
 iov_iter_revert(from, write_len - iov_iter_count(from));
out:
 return written;
}
