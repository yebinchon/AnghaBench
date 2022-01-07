
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {scalar_t__ len; struct kvec* head; struct kvec* tail; scalar_t__ page_len; } ;
struct kvec {int iov_len; char* iov_base; } ;


 int gss_krb5_padding (int,scalar_t__) ;
 int memset (char*,int,int) ;

__attribute__((used)) static inline void
gss_krb5_add_padding(struct xdr_buf *buf, int offset, int blocksize)
{
 int padding = gss_krb5_padding(blocksize, buf->len - offset);
 char *p;
 struct kvec *iov;

 if (buf->page_len || buf->tail[0].iov_len)
  iov = &buf->tail[0];
 else
  iov = &buf->head[0];
 p = iov->iov_base + iov->iov_len;
 iov->iov_len += padding;
 buf->len += padding;
 memset(p, padding, padding);
}
