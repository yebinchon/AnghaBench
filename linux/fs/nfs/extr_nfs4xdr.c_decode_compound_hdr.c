
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct compound_hdr {char* tag; int nops; void* status; void* taglen; } ;
typedef int __be32 ;


 int EIO ;
 int XDR_QUADLEN (void*) ;
 void* be32_to_cpup (int *) ;
 int nfs4_stat_to_errno (void*) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_compound_hdr(struct xdr_stream *xdr, struct compound_hdr *hdr)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 8);
 if (unlikely(!p))
  return -EIO;
 hdr->status = be32_to_cpup(p++);
 hdr->taglen = be32_to_cpup(p);

 p = xdr_inline_decode(xdr, hdr->taglen + 4);
 if (unlikely(!p))
  return -EIO;
 hdr->tag = (char *)p;
 p += XDR_QUADLEN(hdr->taglen);
 hdr->nops = be32_to_cpup(p);
 if (unlikely(hdr->nops < 1))
  return nfs4_stat_to_errno(hdr->status);
 return 0;
}
