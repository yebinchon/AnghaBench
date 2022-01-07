
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs4_cb_compound_hdr {void* nops; void* status; } ;
typedef int __be32 ;


 int EIO ;
 int XDR_QUADLEN (int) ;
 void* be32_to_cpup (int *) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_cb_compound4res(struct xdr_stream *xdr,
      struct nfs4_cb_compound_hdr *hdr)
{
 u32 length;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4 + 4);
 if (unlikely(p == ((void*)0)))
  goto out_overflow;
 hdr->status = be32_to_cpup(p++);

 length = be32_to_cpup(p++);
 p = xdr_inline_decode(xdr, length + 4);
 if (unlikely(p == ((void*)0)))
  goto out_overflow;
 p += XDR_QUADLEN(length);
 hdr->nops = be32_to_cpup(p);
 return 0;
out_overflow:
 return -EIO;
}
