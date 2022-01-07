
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct orangefs_write_range {scalar_t__ pos; size_t len; void* gid; void* uid; } ;


 int ClearPagePrivate (struct page*) ;
 unsigned int PAGE_SIZE ;
 int WARN_ON (int) ;
 int cancel_dirty_page (struct page*) ;
 void* current_fsgid () ;
 void* current_fsuid () ;
 int kfree (struct orangefs_write_range*) ;
 int orangefs_launder_page (struct page*) ;
 scalar_t__ page_offset (struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int printk (char*,scalar_t__,unsigned int) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static void orangefs_invalidatepage(struct page *page,
     unsigned int offset,
     unsigned int length)
{
 struct orangefs_write_range *wr;
 wr = (struct orangefs_write_range *)page_private(page);

 if (offset == 0 && length == PAGE_SIZE) {
  kfree((struct orangefs_write_range *)page_private(page));
  set_page_private(page, 0);
  ClearPagePrivate(page);
  put_page(page);
  return;

 } else if (page_offset(page) + offset <= wr->pos &&
     wr->pos + wr->len <= page_offset(page) + offset + length) {
  kfree((struct orangefs_write_range *)page_private(page));
  set_page_private(page, 0);
  ClearPagePrivate(page);
  put_page(page);

  cancel_dirty_page(page);
  return;

 } else if (wr->pos < page_offset(page) + offset &&
     wr->pos + wr->len <= page_offset(page) + offset + length &&
      page_offset(page) + offset < wr->pos + wr->len) {
  size_t x;
  x = wr->pos + wr->len - (page_offset(page) + offset);
  WARN_ON(x > wr->len);
  wr->len -= x;
  wr->uid = current_fsuid();
  wr->gid = current_fsgid();

 } else if (page_offset(page) + offset <= wr->pos &&
     page_offset(page) + offset + length < wr->pos + wr->len &&
     wr->pos < page_offset(page) + offset + length) {
  size_t x;
  x = page_offset(page) + offset + length - wr->pos;
  WARN_ON(x > wr->len);
  wr->pos += x;
  wr->len -= x;
  wr->uid = current_fsuid();
  wr->gid = current_fsgid();

 } else if (wr->pos < page_offset(page) + offset &&
     page_offset(page) + offset + length < wr->pos + wr->len) {

  WARN_ON(1);





  return;

 } else {

  if (!((page_offset(page) + offset + length <= wr->pos) ^
      (wr->pos + wr->len <= page_offset(page) + offset))) {
   WARN_ON(1);
   printk("invalidate range offset %llu length %u\n",
       page_offset(page) + offset, length);
   printk("write range offset %llu length %zu\n",
       wr->pos, wr->len);
  }
  return;
 }






 orangefs_launder_page(page);
}
