
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE ;
 int htonl (int ) ;
 scalar_t__ likely (int) ;
 void* ntohl (int ) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,unsigned int) ;

__attribute__((used)) static __be32 decode_bitmap(struct xdr_stream *xdr, uint32_t *bitmap)
{
 __be32 *p;
 unsigned int attrlen;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 attrlen = ntohl(*p);
 p = xdr_inline_decode(xdr, attrlen << 2);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 if (likely(attrlen > 0))
  bitmap[0] = ntohl(*p++);
 if (attrlen > 1)
  bitmap[1] = ntohl(*p);
 return 0;
}
