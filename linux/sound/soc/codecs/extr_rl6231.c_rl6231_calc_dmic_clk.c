
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int pr_warn (char*,int) ;

int rl6231_calc_dmic_clk(int rate)
{
 static const int div[] = {2, 3, 4, 6, 8, 12};
 int i;

 if (rate < 1000000 * div[0]) {
  pr_warn("Base clock rate %d is too low\n", rate);
  return -EINVAL;
 }

 for (i = 0; i < ARRAY_SIZE(div); i++) {
  if ((div[i] % 3) == 0)
   continue;

  if (3072000 * div[i] >= rate)
   return i;
 }

 pr_warn("Base clock rate %d is too high\n", rate);
 return -EINVAL;
}
