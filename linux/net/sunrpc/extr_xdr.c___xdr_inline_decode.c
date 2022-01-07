
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {unsigned int nwords; int * p; int * end; } ;
typedef int __be32 ;


 unsigned int XDR_QUADLEN (size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static __be32 * __xdr_inline_decode(struct xdr_stream *xdr, size_t nbytes)
{
 unsigned int nwords = XDR_QUADLEN(nbytes);
 __be32 *p = xdr->p;
 __be32 *q = p + nwords;

 if (unlikely(nwords > xdr->nwords || q > xdr->end || q < p))
  return ((void*)0);
 xdr->p = q;
 xdr->nwords -= nwords;
 return p;
}
