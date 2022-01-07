
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {void* end; scalar_t__ p; struct xdr_buf* buf; } ;
struct xdr_buf {int len; int buflen; } ;



int xdr_restrict_buflen(struct xdr_stream *xdr, int newbuflen)
{
 struct xdr_buf *buf = xdr->buf;
 int left_in_this_buf = (void *)xdr->end - (void *)xdr->p;
 int end_offset = buf->len + left_in_this_buf;

 if (newbuflen < 0 || newbuflen < buf->len)
  return -1;
 if (newbuflen > buf->buflen)
  return 0;
 if (newbuflen < end_offset)
  xdr->end = (void *)xdr->end + newbuflen - end_offset;
 buf->buflen = newbuflen;
 return 0;
}
