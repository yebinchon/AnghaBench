
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITMAP_LAST_WORD_MASK (unsigned long) ;
 unsigned long BITS_PER_LONG ;
 unsigned long __fls (unsigned long) ;

unsigned long find_last_bit(const unsigned long *addr, unsigned long size)
{
 if (size) {
  unsigned long val = BITMAP_LAST_WORD_MASK(size);
  unsigned long idx = (size-1) / BITS_PER_LONG;

  do {
   val &= addr[idx];
   if (val)
    return idx * BITS_PER_LONG + __fls(val);

   val = ~0ul;
  } while (idx--);
 }
 return size;
}
