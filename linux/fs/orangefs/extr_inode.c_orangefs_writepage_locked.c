
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct orangefs_write_range {size_t pos; size_t len; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct bio_vec {size_t bv_len; size_t bv_offset; struct page* bv_page; } ;
typedef scalar_t__ ssize_t ;
typedef size_t loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int ClearPagePrivate (struct page*) ;
 int ORANGEFS_IO_WRITE ;
 size_t PAGE_SIZE ;
 scalar_t__ PagePrivate (struct page*) ;
 int SetPageError (struct page*) ;
 int WARN_ON (int) ;
 int WRITE ;
 size_t i_size_read (struct inode*) ;
 int iov_iter_bvec (struct iov_iter*,int ,struct bio_vec*,int,size_t) ;
 int kfree (struct orangefs_write_range*) ;
 int mapping_set_error (TYPE_1__*,scalar_t__) ;
 size_t page_offset (struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int set_page_writeback (struct page*) ;
 scalar_t__ wait_for_direct_io (int ,struct inode*,size_t*,struct iov_iter*,size_t,size_t,struct orangefs_write_range*,int *) ;

__attribute__((used)) static int orangefs_writepage_locked(struct page *page,
    struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 struct orangefs_write_range *wr = ((void*)0);
 struct iov_iter iter;
 struct bio_vec bv;
 size_t len, wlen;
 ssize_t ret;
 loff_t off;

 set_page_writeback(page);

 len = i_size_read(inode);
 if (PagePrivate(page)) {
  wr = (struct orangefs_write_range *)page_private(page);
  WARN_ON(wr->pos >= len);
  off = wr->pos;
  if (off + wr->len > len)
   wlen = len - off;
  else
   wlen = wr->len;
 } else {
  WARN_ON(1);
  off = page_offset(page);
  if (off + PAGE_SIZE > len)
   wlen = len - off;
  else
   wlen = PAGE_SIZE;
 }

 WARN_ON(off == len || off + wlen > len);

 bv.bv_page = page;
 bv.bv_len = wlen;
 bv.bv_offset = off % PAGE_SIZE;
 WARN_ON(wlen == 0);
 iov_iter_bvec(&iter, WRITE, &bv, 1, wlen);

 ret = wait_for_direct_io(ORANGEFS_IO_WRITE, inode, &off, &iter, wlen,
     len, wr, ((void*)0));
 if (ret < 0) {
  SetPageError(page);
  mapping_set_error(page->mapping, ret);
 } else {
  ret = 0;
 }
 if (wr) {
  kfree(wr);
  set_page_private(page, 0);
  ClearPagePrivate(page);
  put_page(page);
 }
 return ret;
}
