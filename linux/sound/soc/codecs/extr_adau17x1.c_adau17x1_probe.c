
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct adau {void (* switch_mode ) (struct device*) ;int type; struct regmap* sigmadsp; struct regmap* regmap; struct regmap* mclk; int pll_regs; int clk_src; } ;
typedef enum adau17x1_type { ____Placeholder_adau17x1_type } adau17x1_type ;


 int ADAU17X1_CLK_SRC_PLL_AUTO ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 scalar_t__ adau17x1_has_safeload (struct adau*) ;
 int adau17x1_sigmadsp_ops ;
 int adau_calc_pll_cfg (int ,int,int ) ;
 int clk_get_rate (struct regmap*) ;
 int clk_prepare_enable (struct regmap*) ;
 int dev_set_drvdata (struct device*,struct adau*) ;
 int dev_warn (struct device*,char*,int) ;
 struct regmap* devm_clk_get (struct device*,char*) ;
 struct adau* devm_kzalloc (struct device*,int,int ) ;
 void* devm_sigmadsp_init_regmap (struct device*,struct regmap*,int *,char const*) ;

int adau17x1_probe(struct device *dev, struct regmap *regmap,
 enum adau17x1_type type, void (*switch_mode)(struct device *dev),
 const char *firmware_name)
{
 struct adau *adau;
 int ret;

 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 adau = devm_kzalloc(dev, sizeof(*adau), GFP_KERNEL);
 if (!adau)
  return -ENOMEM;

 adau->mclk = devm_clk_get(dev, "mclk");
 if (IS_ERR(adau->mclk)) {
  if (PTR_ERR(adau->mclk) != -ENOENT)
   return PTR_ERR(adau->mclk);

  adau->mclk = ((void*)0);
 } else if (adau->mclk) {
  adau->clk_src = ADAU17X1_CLK_SRC_PLL_AUTO;






  ret = adau_calc_pll_cfg(clk_get_rate(adau->mclk), 48000 * 1024,
    adau->pll_regs);
  if (ret < 0)
   return ret;

  ret = clk_prepare_enable(adau->mclk);
  if (ret)
   return ret;
 }

 adau->regmap = regmap;
 adau->switch_mode = switch_mode;
 adau->type = type;

 dev_set_drvdata(dev, adau);

 if (firmware_name) {
  if (adau17x1_has_safeload(adau)) {
   adau->sigmadsp = devm_sigmadsp_init_regmap(dev, regmap,
    &adau17x1_sigmadsp_ops, firmware_name);
  } else {
   adau->sigmadsp = devm_sigmadsp_init_regmap(dev, regmap,
    ((void*)0), firmware_name);
  }
  if (IS_ERR(adau->sigmadsp)) {
   dev_warn(dev, "Could not find firmware file: %ld\n",
    PTR_ERR(adau->sigmadsp));
   adau->sigmadsp = ((void*)0);
  }
 }

 if (switch_mode)
  switch_mode(dev);

 return 0;
}
