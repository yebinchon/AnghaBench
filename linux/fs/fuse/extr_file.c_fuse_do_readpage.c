
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct fuse_page_desc {scalar_t__ length; } ;
struct TYPE_5__ {int page_zeroing; int out_pages; } ;
struct TYPE_6__ {int num_pages; TYPE_2__ args; struct fuse_page_desc* descs; struct page** pages; } ;
struct fuse_io_args {TYPE_3__ ap; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {struct inode* host; } ;


 int FUSE_READ ;
 scalar_t__ PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 int fuse_read_args_fill (struct fuse_io_args*,struct file*,int ,scalar_t__,int ) ;
 int fuse_short_read (struct inode*,int ,scalar_t__,TYPE_3__*) ;
 scalar_t__ fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 int fuse_wait_on_page_writeback (struct inode*,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int page_offset (struct page*) ;

__attribute__((used)) static int fuse_do_readpage(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 struct fuse_conn *fc = get_fuse_conn(inode);
 loff_t pos = page_offset(page);
 struct fuse_page_desc desc = { .length = PAGE_SIZE };
 struct fuse_io_args ia = {
  .ap.args.page_zeroing = 1,
  .ap.args.out_pages = 1,
  .ap.num_pages = 1,
  .ap.pages = &page,
  .ap.descs = &desc,
 };
 ssize_t res;
 u64 attr_ver;






 fuse_wait_on_page_writeback(inode, page->index);

 attr_ver = fuse_get_attr_version(fc);

 fuse_read_args_fill(&ia, file, pos, desc.length, FUSE_READ);
 res = fuse_simple_request(fc, &ia.ap.args);
 if (res < 0)
  return res;



 if (res < desc.length)
  fuse_short_read(inode, attr_ver, res, &ia.ap);

 SetPageUptodate(page);

 return 0;
}
