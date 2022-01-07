
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int ASSERT (int) ;
 int BIT_TO_WORD_SHIFT ;
 int NBWORD ;
 int ffz (int) ;

int
xfs_contig_bits(uint *map, uint size, uint start_bit)
{
 uint * p = ((unsigned int *) map) + (start_bit >> BIT_TO_WORD_SHIFT);
 uint result = 0;
 uint tmp;

 size <<= BIT_TO_WORD_SHIFT;

 ASSERT(start_bit < size);
 size -= start_bit & ~(NBWORD - 1);
 start_bit &= (NBWORD - 1);
 if (start_bit) {
  tmp = *p++;

  tmp |= (~0U >> (NBWORD-start_bit));
  if (tmp != ~0U)
   goto found;
  result += NBWORD;
  size -= NBWORD;
 }
 while (size) {
  if ((tmp = *p++) != ~0U)
   goto found;
  result += NBWORD;
  size -= NBWORD;
 }
 return result - start_bit;
found:
 return result + ffz(tmp) - start_bit;
}
