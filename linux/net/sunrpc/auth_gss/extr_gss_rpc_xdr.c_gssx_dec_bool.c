
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int ENOSPC ;
 int be32_to_cpu (int ) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int gssx_dec_bool(struct xdr_stream *xdr, u32 *v)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;
 *v = be32_to_cpu(*p);
 return 0;
}
