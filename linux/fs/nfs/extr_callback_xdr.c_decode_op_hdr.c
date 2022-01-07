
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE_HDR ;
 int htonl (int ) ;
 unsigned int ntohl (int ) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 decode_op_hdr(struct xdr_stream *xdr, unsigned int *op)
{
 __be32 *p;
 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE_HDR);
 *op = ntohl(*p);
 return 0;
}
