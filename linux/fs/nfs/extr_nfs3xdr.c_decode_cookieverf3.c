
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int NFS3_COOKIEVERFSIZE ;
 int memcpy (int *,int *,int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_cookieverf3(struct xdr_stream *xdr, __be32 *verifier)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, NFS3_COOKIEVERFSIZE);
 if (unlikely(!p))
  return -EIO;
 memcpy(verifier, p, NFS3_COOKIEVERFSIZE);
 return 0;
}
