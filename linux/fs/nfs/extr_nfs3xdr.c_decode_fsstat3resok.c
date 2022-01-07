
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fsstat {int afiles; int ffiles; int tfiles; int abytes; int fbytes; int tbytes; } ;
typedef int __be32 ;


 int EIO ;
 scalar_t__ unlikely (int) ;
 int * xdr_decode_size3 (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_fsstat3resok(struct xdr_stream *xdr,
          struct nfs_fsstat *result)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 8 * 6 + 4);
 if (unlikely(!p))
  return -EIO;
 p = xdr_decode_size3(p, &result->tbytes);
 p = xdr_decode_size3(p, &result->fbytes);
 p = xdr_decode_size3(p, &result->abytes);
 p = xdr_decode_size3(p, &result->tfiles);
 p = xdr_decode_size3(p, &result->ffiles);
 xdr_decode_size3(p, &result->afiles);

 return 0;
}
