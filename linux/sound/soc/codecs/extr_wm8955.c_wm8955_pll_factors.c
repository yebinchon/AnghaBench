
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pll_factors {int outdiv; unsigned int n; unsigned int k; } ;
struct device {int dummy; } ;


 long long FIXED_FLL_SIZE ;
 int WARN_ON (int) ;
 int dev_dbg (struct device*,char*,unsigned int,...) ;
 int do_div (int,int) ;

__attribute__((used)) static int wm8955_pll_factors(struct device *dev,
         int Fref, int Fout, struct pll_factors *pll)
{
 u64 Kpart;
 unsigned int K, Ndiv, Nmod, target;

 dev_dbg(dev, "Fref=%u Fout=%u\n", Fref, Fout);





 target = Fout * 4;
 if (target < 90000000) {
  pll->outdiv = 1;
  target *= 2;
 } else {
  pll->outdiv = 0;
 }

 WARN_ON(target < 90000000 || target > 100000000);

 dev_dbg(dev, "Fvco=%dHz\n", target);


 Ndiv = target / Fref;

 pll->n = Ndiv;
 Nmod = target % Fref;
 dev_dbg(dev, "Nmod=%d\n", Nmod);


 Kpart = FIXED_FLL_SIZE * (long long)Nmod;

 do_div(Kpart, Fref);

 K = Kpart & 0xFFFFFFFF;

 if ((K % 10) >= 5)
  K += 5;


 pll->k = K / 10;

 dev_dbg(dev, "N=%x K=%x OUTDIV=%x\n", pll->n, pll->k, pll->outdiv);

 return 0;
}
