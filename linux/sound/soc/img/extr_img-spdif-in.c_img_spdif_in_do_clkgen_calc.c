
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int img_spdif_in_do_clkgen_calc(unsigned int rate, unsigned int *pnom,
  unsigned int *phld, unsigned long clk_rate)
{
 unsigned int ori, nom, hld;






 if (!rate)
  return -EINVAL;

 ori = clk_rate / (rate * 64);

 if (!ori)
  return -EINVAL;

 nom = (4096 / ori) + 1;
 do
  hld = 4096 - (--nom * (ori - 1));
 while (hld < 120);

 *pnom = nom;
 *phld = hld;

 return 0;
}
