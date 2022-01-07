
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int mb_find_next_zero_bit (scalar_t__*,int,int ) ;
 int mb_test_and_clear_bit (int,void*) ;

__attribute__((used)) static int mb_test_and_clear_bits(void *bm, int cur, int len)
{
 __u32 *addr;
 int zero_bit = -1;

 len = cur + len;
 while (cur < len) {
  if ((cur & 31) == 0 && (len - cur) >= 32) {

   addr = bm + (cur >> 3);
   if (*addr != (__u32)(-1) && zero_bit == -1)
    zero_bit = cur + mb_find_next_zero_bit(addr, 32, 0);
   *addr = 0;
   cur += 32;
   continue;
  }
  if (!mb_test_and_clear_bit(cur, bm) && zero_bit == -1)
   zero_bit = cur;
  cur++;
 }

 return zero_bit;
}
