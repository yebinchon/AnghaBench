
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap {unsigned int map_nr; unsigned int shift; } ;


 unsigned int SB_NR_TO_BIT (struct sbitmap*,unsigned int) ;
 unsigned int SB_NR_TO_INDEX (struct sbitmap*,unsigned int) ;
 int sbitmap_find_bit_in_index (struct sbitmap*,unsigned int,unsigned int,int) ;

int sbitmap_get(struct sbitmap *sb, unsigned int alloc_hint, bool round_robin)
{
 unsigned int i, index;
 int nr = -1;

 index = SB_NR_TO_INDEX(sb, alloc_hint);






 if (round_robin)
  alloc_hint = SB_NR_TO_BIT(sb, alloc_hint);
 else
  alloc_hint = 0;

 for (i = 0; i < sb->map_nr; i++) {
  nr = sbitmap_find_bit_in_index(sb, index, alloc_hint,
      round_robin);
  if (nr != -1) {
   nr += index << sb->shift;
   break;
  }


  alloc_hint = 0;
  if (++index >= sb->map_nr)
   index = 0;
 }

 return nr;
}
