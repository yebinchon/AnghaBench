
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;


 size_t BIT_TO_WORD_SHIFT ;
 int NBWORD ;
 size_t XFS_BLF_SHIFT ;
 size_t min (size_t,size_t) ;

__attribute__((used)) static void
xfs_buf_item_log_segment(
 uint first,
 uint last,
 uint *map)
{
 uint first_bit;
 uint last_bit;
 uint bits_to_set;
 uint bits_set;
 uint word_num;
 uint *wordp;
 uint bit;
 uint end_bit;
 uint mask;




 first_bit = first >> XFS_BLF_SHIFT;
 last_bit = last >> XFS_BLF_SHIFT;




 bits_to_set = last_bit - first_bit + 1;





 word_num = first_bit >> BIT_TO_WORD_SHIFT;
 wordp = &map[word_num];




 bit = first_bit & (uint)(NBWORD - 1);
 if (bit) {
  end_bit = min(bit + bits_to_set, (uint)NBWORD);
  mask = ((1U << (end_bit - bit)) - 1) << bit;
  *wordp |= mask;
  wordp++;
  bits_set = end_bit - bit;
 } else {
  bits_set = 0;
 }





 while ((bits_to_set - bits_set) >= NBWORD) {
  *wordp |= 0xffffffff;
  bits_set += NBWORD;
  wordp++;
 }




 end_bit = bits_to_set - bits_set;
 if (end_bit) {
  mask = (1U << end_bit) - 1;
  *wordp |= mask;
 }
}
