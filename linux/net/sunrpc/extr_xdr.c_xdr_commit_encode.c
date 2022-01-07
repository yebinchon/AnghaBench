
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iov_len; int iov_base; } ;
struct xdr_stream {TYPE_1__ scratch; scalar_t__ p; int * page_ptr; } ;


 int memcpy (int ,void*,int) ;
 int memmove (void*,void*,int) ;
 void* page_address (int ) ;

inline void xdr_commit_encode(struct xdr_stream *xdr)
{
 int shift = xdr->scratch.iov_len;
 void *page;

 if (shift == 0)
  return;
 page = page_address(*xdr->page_ptr);
 memcpy(xdr->scratch.iov_base, page, shift);
 memmove(page, page + shift, (void *)xdr->p - page);
 xdr->scratch.iov_len = 0;
}
