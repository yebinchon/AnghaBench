
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {unsigned int page_len; unsigned int buflen; scalar_t__ len; scalar_t__ page_base; int pages; TYPE_1__* head; struct kvec* tail; } ;
struct kvec {unsigned int iov_len; scalar_t__ iov_base; } ;
struct TYPE_2__ {unsigned int iov_len; } ;


 int BUG_ON (int) ;
 int _copy_from_pages (char*,int ,scalar_t__,size_t) ;
 int memmove (char*,scalar_t__,size_t) ;

__attribute__((used)) static unsigned int
xdr_shrink_pagelen(struct xdr_buf *buf, size_t len)
{
 struct kvec *tail;
 size_t copy;
 unsigned int pglen = buf->page_len;
 unsigned int tailbuf_len;
 unsigned int result;

 result = 0;
 tail = buf->tail;
 BUG_ON (len > pglen);

 tailbuf_len = buf->buflen - buf->head->iov_len - buf->page_len;


 if (tailbuf_len != 0) {
  unsigned int free_space = tailbuf_len - tail->iov_len;

  if (len < free_space)
   free_space = len;
  tail->iov_len += free_space;

  copy = len;
  if (tail->iov_len > len) {
   char *p = (char *)tail->iov_base + len;
   memmove(p, tail->iov_base, tail->iov_len - len);
   result += tail->iov_len - len;
  } else
   copy = tail->iov_len;

  _copy_from_pages((char *)tail->iov_base,
    buf->pages, buf->page_base + pglen - len,
    copy);
  result += copy;
 }
 buf->page_len -= len;
 buf->buflen -= len;

 if (buf->len > buf->buflen)
  buf->len = buf->buflen;

 return result;
}
