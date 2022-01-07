
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int calc_code_bit(unsigned int i, unsigned int *p_cache)
{
 unsigned int b, p = 0;





 b = i + 1;


 if (p_cache)
  p = *p_cache;
        b += p;
 for (; (1 << p) < (b + 1); p++)
  b++;

 if (p_cache)
  *p_cache = p;

 return b;
}
