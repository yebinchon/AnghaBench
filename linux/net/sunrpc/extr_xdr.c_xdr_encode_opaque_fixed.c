
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 unsigned int XDR_QUADLEN (unsigned int) ;
 scalar_t__ likely (int) ;
 int memcpy (int *,void const*,unsigned int) ;
 int memset (char*,int ,unsigned int) ;

__be32 *xdr_encode_opaque_fixed(__be32 *p, const void *ptr, unsigned int nbytes)
{
 if (likely(nbytes != 0)) {
  unsigned int quadlen = XDR_QUADLEN(nbytes);
  unsigned int padding = (quadlen << 2) - nbytes;

  if (ptr != ((void*)0))
   memcpy(p, ptr, nbytes);
  if (padding != 0)
   memset((char *)p + nbytes, 0, padding);
  p += quadlen;
 }
 return p;
}
