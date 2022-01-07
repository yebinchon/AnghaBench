
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8810 {int sysclk; int regmap; int dev; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int NAU8810_CLKM_MASK ;
 int NAU8810_CLKM_MCLK ;
 int NAU8810_MCLKSEL_MASK ;
 int NAU8810_MCLKSEL_SFT ;
 int NAU8810_REG_CLOCK ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*) ;
 int* nau8810_mclk_scaler ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int nau8810_mclk_clkdiv(struct nau8810 *nau8810, int rate)
{
 int i, sclk, imclk = rate * 256, div = 0;

 if (!nau8810->sysclk) {
  dev_err(nau8810->dev, "Make mclk div configuration fail because of invalid system clock\n");
  return -EINVAL;
 }





 for (i = 1; i < ARRAY_SIZE(nau8810_mclk_scaler); i++) {
  sclk = (nau8810->sysclk * 10) /
   nau8810_mclk_scaler[i];
  if (sclk < imclk)
   break;
  div = i;
 }
 dev_dbg(nau8810->dev,
  "master clock prescaler %x for fs %d\n", div, rate);


 regmap_update_bits(nau8810->regmap, NAU8810_REG_CLOCK,
  NAU8810_MCLKSEL_MASK, (div << NAU8810_MCLKSEL_SFT));
 regmap_update_bits(nau8810->regmap, NAU8810_REG_CLOCK,
  NAU8810_CLKM_MASK, NAU8810_CLKM_MCLK);

 return 0;
}
