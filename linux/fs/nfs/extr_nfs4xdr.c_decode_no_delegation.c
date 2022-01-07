
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
struct nfs_openres {int dummy; } ;
typedef int __be32 ;


 int EIO ;


 int be32_to_cpup (int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_no_delegation(struct xdr_stream *xdr, struct nfs_openres *res)
{
 __be32 *p;
 uint32_t why_no_delegation;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 why_no_delegation = be32_to_cpup(p);
 switch (why_no_delegation) {
  case 129:
  case 128:
   xdr_inline_decode(xdr, 4);

 }
 return 0;
}
