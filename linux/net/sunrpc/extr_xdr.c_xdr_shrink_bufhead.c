
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {unsigned int page_len; scalar_t__ buflen; scalar_t__ len; scalar_t__ page_base; int pages; struct kvec* head; struct kvec* tail; } ;
struct kvec {size_t iov_len; scalar_t__ iov_base; } ;


 int WARN_ON_ONCE (int) ;
 int _copy_from_pages (char*,int ,scalar_t__,size_t) ;
 int _copy_to_pages (int ,scalar_t__,char*,size_t) ;
 int _shift_data_right_pages (int ,scalar_t__,scalar_t__,unsigned int) ;
 int memcpy (scalar_t__,char*,size_t) ;
 int memmove (char*,scalar_t__,size_t) ;

__attribute__((used)) static unsigned int
xdr_shrink_bufhead(struct xdr_buf *buf, size_t len)
{
 struct kvec *head, *tail;
 size_t copy, offs;
 unsigned int pglen = buf->page_len;
 unsigned int result;

 result = 0;
 tail = buf->tail;
 head = buf->head;

 WARN_ON_ONCE(len > head->iov_len);
 if (len > head->iov_len)
  len = head->iov_len;


 if (tail->iov_len != 0) {
  if (tail->iov_len > len) {
   copy = tail->iov_len - len;
   memmove((char *)tail->iov_base + len,
     tail->iov_base, copy);
   result += copy;
  }

  copy = len;
  if (copy > pglen)
   copy = pglen;
  offs = len - copy;
  if (offs >= tail->iov_len)
   copy = 0;
  else if (copy > tail->iov_len - offs)
   copy = tail->iov_len - offs;
  if (copy != 0) {
   _copy_from_pages((char *)tail->iov_base + offs,
     buf->pages,
     buf->page_base + pglen + offs - len,
     copy);
   result += copy;
  }

  if (len > pglen) {
   offs = copy = len - pglen;
   if (copy > tail->iov_len)
    copy = tail->iov_len;
   memcpy(tail->iov_base,
     (char *)head->iov_base +
     head->iov_len - offs,
     copy);
   result += copy;
  }
 }

 if (pglen != 0) {
  if (pglen > len)
   _shift_data_right_pages(buf->pages,
     buf->page_base + len,
     buf->page_base,
     pglen - len);
  copy = len;
  if (len > pglen)
   copy = pglen;
  _copy_to_pages(buf->pages, buf->page_base,
    (char *)head->iov_base + head->iov_len - len,
    copy);
  result += copy;
 }
 head->iov_len -= len;
 buf->buflen -= len;

 if (buf->len > buf->buflen)
  buf->len = buf->buflen;

 return result;
}
