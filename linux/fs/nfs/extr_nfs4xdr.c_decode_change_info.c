
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs4_change_info {int after; int before; int atomic; } ;
typedef int __be32 ;


 int EIO ;
 int be32_to_cpup (int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_change_info(struct xdr_stream *xdr, struct nfs4_change_info *cinfo)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 20);
 if (unlikely(!p))
  return -EIO;
 cinfo->atomic = be32_to_cpup(p++);
 p = xdr_decode_hyper(p, &cinfo->before);
 xdr_decode_hyper(p, &cinfo->after);
 return 0;
}
