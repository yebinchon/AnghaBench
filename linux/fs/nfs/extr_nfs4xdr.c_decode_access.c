
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int OP_ACCESS ;
 int be32_to_cpup (int *) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_access(struct xdr_stream *xdr, u32 *supported, u32 *access)
{
 __be32 *p;
 uint32_t supp, acc;
 int status;

 status = decode_op_hdr(xdr, OP_ACCESS);
 if (status)
  return status;
 p = xdr_inline_decode(xdr, 8);
 if (unlikely(!p))
  return -EIO;
 supp = be32_to_cpup(p++);
 acc = be32_to_cpup(p);
 *supported = supp;
 *access = acc;
 return 0;
}
