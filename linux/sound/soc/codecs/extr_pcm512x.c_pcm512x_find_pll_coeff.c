
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct snd_soc_dai {struct snd_soc_component* component; struct device* dev; } ;
struct snd_soc_component {int dummy; } ;
struct pcm512x_priv {unsigned long real_pll; int pll_r; int pll_j; int pll_d; int pll_p; } ;
struct device {int dummy; } ;


 unsigned long DIV_ROUND_CLOSEST_ULL (unsigned long long,unsigned long) ;
 unsigned long DIV_ROUND_DOWN_ULL (unsigned long,int) ;
 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 int EINVAL ;
 int dev_dbg (struct device*,char*,int,int,...) ;
 int dev_err (struct device*,char*) ;
 unsigned long gcd (int,unsigned long) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm512x_find_pll_coeff(struct snd_soc_dai *dai,
      unsigned long pllin_rate,
      unsigned long pll_rate)
{
 struct device *dev = dai->dev;
 struct snd_soc_component *component = dai->component;
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);
 unsigned long common;
 int R, J, D, P;
 unsigned long K;
 unsigned long num;
 unsigned long den;

 common = gcd(pll_rate, pllin_rate);
 dev_dbg(dev, "pll %lu pllin %lu common %lu\n",
  pll_rate, pllin_rate, common);
 num = pll_rate / common;
 den = pllin_rate / common;


 if (pllin_rate / den > 20000000 && num < 8) {
  num *= DIV_ROUND_UP(pllin_rate / den, 20000000);
  den *= DIV_ROUND_UP(pllin_rate / den, 20000000);
 }
 dev_dbg(dev, "num / den = %lu / %lu\n", num, den);

 P = den;
 if (den <= 15 && num <= 16 * 63
     && 1000000 <= pllin_rate / P && pllin_rate / P <= 20000000) {

  D = 0;

  for (R = 16; R; R--) {
   if (num % R)
    continue;
   J = num / R;
   if (J == 0 || J > 63)
    continue;

   dev_dbg(dev, "R * J / P = %d * %d / %d\n", R, J, P);
   pcm512x->real_pll = pll_rate;
   goto done;
  }

 }

 R = 1;

 if (num > 0xffffffffUL / 10000)
  goto fallback;


 common = gcd(10000 * num, den);
 num = 10000 * num / common;
 den /= common;
 dev_dbg(dev, "num %lu den %lu common %lu\n", num, den, common);

 for (P = den; P <= 15; P++) {
  if (pllin_rate / P < 6667000 || 200000000 < pllin_rate / P)
   continue;
  if (num * P % den)
   continue;
  K = num * P / den;

  if (K < 40000 || K > 120000)
   continue;

  J = K / 10000;
  D = K % 10000;
  dev_dbg(dev, "J.D / P = %d.%04d / %d\n", J, D, P);
  pcm512x->real_pll = pll_rate;
  goto done;
 }



fallback:

 P = DIV_ROUND_UP(pllin_rate, 20000000);
 if (!P)
  P = 1;
 else if (P > 15) {
  dev_err(dev, "Need a slower clock as pll-input\n");
  return -EINVAL;
 }
 if (pllin_rate / P < 6667000) {
  dev_err(dev, "Need a faster clock as pll-input\n");
  return -EINVAL;
 }
 K = DIV_ROUND_CLOSEST_ULL(10000ULL * pll_rate * P, pllin_rate);
 if (K < 40000)
  K = 40000;

 if (K > 120000)
  K = 120000;
 J = K / 10000;
 D = K % 10000;
 dev_dbg(dev, "J.D / P ~ %d.%04d / %d\n", J, D, P);
 pcm512x->real_pll = DIV_ROUND_DOWN_ULL((u64)K * pllin_rate, 10000 * P);

done:
 pcm512x->pll_r = R;
 pcm512x->pll_j = J;
 pcm512x->pll_d = D;
 pcm512x->pll_p = P;
 return 0;
}
