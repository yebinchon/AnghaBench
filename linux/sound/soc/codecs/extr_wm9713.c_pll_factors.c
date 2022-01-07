
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct snd_soc_component {int dev; } ;
struct _pll_div {int divsel; int divctl; int lf; unsigned int n; unsigned int k; } ;


 long long FIXED_PLL_SIZE ;
 int dev_warn (int ,char*,unsigned int) ;
 int do_div (int,unsigned int) ;

__attribute__((used)) static void pll_factors(struct snd_soc_component *component,
 struct _pll_div *pll_div, unsigned int source)
{
 u64 Kpart;
 unsigned int K, Ndiv, Nmod, target;


 target = 98304000;


 if (source > 14400000) {
  source >>= 1;
  pll_div->divsel = 1;

  if (source > 14400000) {
   source >>= 1;
   pll_div->divctl = 1;
  } else
   pll_div->divctl = 0;

 } else {
  pll_div->divsel = 0;
  pll_div->divctl = 0;
 }




 if (source < 8192000) {
  pll_div->lf = 1;
  target >>= 2;
 } else
  pll_div->lf = 0;

 Ndiv = target / source;
 if ((Ndiv < 5) || (Ndiv > 12))
  dev_warn(component->dev,
   "WM9713 PLL N value %u out of recommended range!\n",
   Ndiv);

 pll_div->n = Ndiv;
 Nmod = target % source;
 Kpart = FIXED_PLL_SIZE * (long long)Nmod;

 do_div(Kpart, source);

 K = Kpart & 0xFFFFFFFF;


 if ((K % 10) >= 5)
  K += 5;


 K /= 10;

 pll_div->k = K;
}
