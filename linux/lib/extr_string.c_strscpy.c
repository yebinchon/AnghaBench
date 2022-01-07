
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct word_at_a_time {int dummy; } ;
typedef long ssize_t ;


 long E2BIG ;
 size_t INT_MAX ;
 int PAGE_SIZE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct word_at_a_time WORD_AT_A_TIME_CONSTANTS ;
 unsigned long create_zero_mask (unsigned long) ;
 long find_zero (unsigned long) ;
 scalar_t__ has_zero (unsigned long,unsigned long*,struct word_at_a_time const*) ;
 unsigned long prep_zero_mask (unsigned long,unsigned long,struct word_at_a_time const*) ;
 unsigned long read_word_at_a_time (char const*) ;
 unsigned long zero_bytemask (unsigned long) ;

ssize_t strscpy(char *dest, const char *src, size_t count)
{
 const struct word_at_a_time constants = WORD_AT_A_TIME_CONSTANTS;
 size_t max = count;
 long res = 0;

 if (count == 0 || WARN_ON_ONCE(count > INT_MAX))
  return -E2BIG;
 if (((long) dest | (long) src) & (sizeof(long) - 1))
  max = 0;


 while (max >= sizeof(unsigned long)) {
  unsigned long c, data;

  c = read_word_at_a_time(src+res);
  if (has_zero(c, &data, &constants)) {
   data = prep_zero_mask(c, data, &constants);
   data = create_zero_mask(data);
   *(unsigned long *)(dest+res) = c & zero_bytemask(data);
   return res + find_zero(data);
  }
  *(unsigned long *)(dest+res) = c;
  res += sizeof(unsigned long);
  count -= sizeof(unsigned long);
  max -= sizeof(unsigned long);
 }

 while (count) {
  char c;

  c = src[res];
  dest[res] = c;
  if (!c)
   return res;
  res++;
  count--;
 }


 if (res)
  dest[res-1] = '\0';

 return -E2BIG;
}
