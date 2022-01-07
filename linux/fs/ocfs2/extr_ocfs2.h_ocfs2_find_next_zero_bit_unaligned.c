
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* correct_addr_and_bit_unaligned (int*,void*) ;
 int ocfs2_find_next_zero_bit (void*,int,int) ;

__attribute__((used)) static inline int ocfs2_find_next_zero_bit_unaligned(void *bitmap, int max,
       int start)
{
 int fix = 0, ret, tmpmax;
 bitmap = correct_addr_and_bit_unaligned(&fix, bitmap);
 tmpmax = max + fix;
 start += fix;

 ret = ocfs2_find_next_zero_bit(bitmap, tmpmax, start) - fix;
 if (ret > max)
  return max;
 return ret;
}
