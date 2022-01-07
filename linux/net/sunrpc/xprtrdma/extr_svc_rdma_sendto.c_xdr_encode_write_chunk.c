
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int __be32 ;


 unsigned int be32_to_cpu (int ) ;
 unsigned int be32_to_cpup (int *) ;
 int cpu_to_be32 (unsigned int) ;

__attribute__((used)) static unsigned int xdr_encode_write_chunk(__be32 *dst, __be32 *src,
        unsigned int remaining)
{
 unsigned int i, nsegs;
 u32 seg_len;


 *dst++ = *src++;


 nsegs = be32_to_cpup(src);
 *dst++ = *src++;

 for (i = nsegs; i; i--) {

  *dst++ = *src++;


  seg_len = be32_to_cpu(*src);
  if (remaining >= seg_len) {

   *dst = *src;
   remaining -= seg_len;
  } else {

   *dst = cpu_to_be32(remaining);
   remaining = 0;
  }
  dst++; src++;


  *dst++ = *src++;
  *dst++ = *src++;
 }

 return nsegs;
}
