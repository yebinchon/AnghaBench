
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITMAP_FIRST_WORD_MASK (unsigned long) ;
 unsigned long BITS_PER_LONG ;
 scalar_t__ __ffs (unsigned long) ;
 unsigned long min (scalar_t__,unsigned long) ;
 unsigned long round_down (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned long _find_next_bit(const unsigned long *addr1,
  const unsigned long *addr2, unsigned long nbits,
  unsigned long start, unsigned long invert)
{
 unsigned long tmp;

 if (unlikely(start >= nbits))
  return nbits;

 tmp = addr1[start / BITS_PER_LONG];
 if (addr2)
  tmp &= addr2[start / BITS_PER_LONG];
 tmp ^= invert;


 tmp &= BITMAP_FIRST_WORD_MASK(start);
 start = round_down(start, BITS_PER_LONG);

 while (!tmp) {
  start += BITS_PER_LONG;
  if (start >= nbits)
   return nbits;

  tmp = addr1[start / BITS_PER_LONG];
  if (addr2)
   tmp &= addr2[start / BITS_PER_LONG];
  tmp ^= invert;
 }

 return min(start + __ffs(tmp), nbits);
}
