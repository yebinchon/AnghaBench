
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE_HDR ;
 int htonl (int ) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 encode_op_hdr(struct xdr_stream *xdr, uint32_t op, __be32 res)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 8);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE_HDR);
 *p++ = htonl(op);
 *p = res;
 return 0;
}
