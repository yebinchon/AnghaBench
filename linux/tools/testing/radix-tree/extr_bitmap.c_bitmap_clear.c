
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITMAP_FIRST_WORD_MASK (unsigned int) ;
 unsigned long BITMAP_LAST_WORD_MASK (unsigned int const) ;
 unsigned int BITS_PER_LONG ;
 int BIT_WORD (unsigned int) ;

void bitmap_clear(unsigned long *map, unsigned int start, int len)
{
 unsigned long *p = map + BIT_WORD(start);
 const unsigned int size = start + len;
 int bits_to_clear = BITS_PER_LONG - (start % BITS_PER_LONG);
 unsigned long mask_to_clear = BITMAP_FIRST_WORD_MASK(start);

 while (len - bits_to_clear >= 0) {
  *p &= ~mask_to_clear;
  len -= bits_to_clear;
  bits_to_clear = BITS_PER_LONG;
  mask_to_clear = ~0UL;
  p++;
 }
 if (len) {
  mask_to_clear &= BITMAP_LAST_WORD_MASK(size);
  *p &= ~mask_to_clear;
 }
}
