
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int * page_ptr; struct kvec* iov; int * end; int * p; } ;
struct kvec {unsigned int iov_len; scalar_t__ iov_base; } ;
typedef int __be32 ;



__attribute__((used)) static void xdr_set_iov(struct xdr_stream *xdr, struct kvec *iov,
  unsigned int len)
{
 if (len > iov->iov_len)
  len = iov->iov_len;
 xdr->p = (__be32*)iov->iov_base;
 xdr->end = (__be32*)(iov->iov_base + len);
 xdr->iov = iov;
 xdr->page_ptr = ((void*)0);
}
