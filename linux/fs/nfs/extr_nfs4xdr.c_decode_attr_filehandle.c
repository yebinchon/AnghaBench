
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int data; } ;
typedef int __be32 ;


 int EIO ;
 unsigned int FATTR4_WORD0_FILEHANDLE ;
 int NFS4_FHSIZE ;
 int be32_to_cpup (int *) ;
 scalar_t__ likely (unsigned int) ;
 int memcpy (int ,int *,int) ;
 int memset (struct nfs_fh*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_attr_filehandle(struct xdr_stream *xdr, uint32_t *bitmap, struct nfs_fh *fh)
{
 __be32 *p;
 u32 len;

 if (fh != ((void*)0))
  memset(fh, 0, sizeof(*fh));

 if (unlikely(bitmap[0] & (FATTR4_WORD0_FILEHANDLE - 1U)))
  return -EIO;
 if (likely(bitmap[0] & FATTR4_WORD0_FILEHANDLE)) {
  p = xdr_inline_decode(xdr, 4);
  if (unlikely(!p))
   return -EIO;
  len = be32_to_cpup(p);
  if (len > NFS4_FHSIZE)
   return -EIO;
  p = xdr_inline_decode(xdr, len);
  if (unlikely(!p))
   return -EIO;
  if (fh != ((void*)0)) {
   memcpy(fh->data, p, len);
   fh->size = len;
  }
  bitmap[0] &= ~FATTR4_WORD0_FILEHANDLE;
 }
 return 0;
}
