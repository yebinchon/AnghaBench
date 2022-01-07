
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int dev_warn (int ,char*,int) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static int rt5514_calc_dmic_clk(struct snd_soc_component *component, int rate)
{
 int div[] = {2, 3, 4, 8, 12, 16, 24, 32};
 int i;

 if (rate < 1000000 * div[0]) {
  pr_warn("Base clock rate %d is too low\n", rate);
  return -EINVAL;
 }

 for (i = 0; i < ARRAY_SIZE(div); i++) {

  if (3072000 * div[i] >= rate)
   return i;
 }

 dev_warn(component->dev, "Base clock rate %d is too high\n", rate);
 return -EINVAL;
}
