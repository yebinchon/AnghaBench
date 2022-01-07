
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int const*) ;
 int EINVAL ;

int rl6231_get_clk_info(int sclk, int rate)
{
 int i;
 static const int pd[] = {1, 2, 3, 4, 6, 8, 12, 16};

 if (sclk <= 0 || rate <= 0)
  return -EINVAL;

 rate = rate << 8;
 for (i = 0; i < ARRAY_SIZE(pd); i++)
  if (sclk == rate * pd[i])
   return i;

 return -EINVAL;
}
