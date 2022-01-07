
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct page {int index; } ;
struct kiocb {struct file* ki_filp; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {size_t size; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_8__ {TYPE_3__ out; TYPE_1__ in; } ;
struct fuse_args_pages {unsigned int num_pages; struct page** pages; TYPE_2__* descs; int args; } ;
struct fuse_io_args {TYPE_4__ write; struct fuse_args_pages ap; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_6__ {unsigned int offset; } ;


 size_t PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int fuse_simple_request (struct fuse_conn*,int *) ;
 int fuse_wait_on_page_writeback (struct inode*,int ) ;
 int fuse_write_args_fill (struct fuse_io_args*,struct fuse_file*,int ,size_t) ;
 int fuse_write_flags (struct kiocb*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static ssize_t fuse_send_write_pages(struct fuse_io_args *ia,
         struct kiocb *iocb, struct inode *inode,
         loff_t pos, size_t count)
{
 struct fuse_args_pages *ap = &ia->ap;
 struct file *file = iocb->ki_filp;
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;
 unsigned int offset, i;
 int err;

 for (i = 0; i < ap->num_pages; i++)
  fuse_wait_on_page_writeback(inode, ap->pages[i]->index);

 fuse_write_args_fill(ia, ff, pos, count);
 ia->write.in.flags = fuse_write_flags(iocb);

 err = fuse_simple_request(fc, &ap->args);

 offset = ap->descs[0].offset;
 count = ia->write.out.size;
 for (i = 0; i < ap->num_pages; i++) {
  struct page *page = ap->pages[i];

  if (!err && !offset && count >= PAGE_SIZE)
   SetPageUptodate(page);

  if (count > PAGE_SIZE - offset)
   count -= PAGE_SIZE - offset;
  else
   count = 0;
  offset = 0;

  unlock_page(page);
  put_page(page);
 }

 return err;
}
