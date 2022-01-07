
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_aio_sub {int lock; struct uniphier_aio* aio; } ;
struct uniphier_aio_pll {int dummy; } ;
struct uniphier_aio_chip {int num_aios; int num_wup_aios; int num_plls; int * clk; int * rst; TYPE_1__* chip_spec; struct platform_device* pdev; struct uniphier_aio* aios; void* plls; int * regmap_sg; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; int fmt; struct uniphier_aio_chip* chip; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int num_dais; int num_plls; int dais; int plls; } ;


 int ARRAY_SIZE (struct uniphier_aio_sub*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int SND_SOC_DAIFMT_I2S ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (struct device*,char*) ;
 int * devm_clk_get (struct device*,char*) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 struct uniphier_aio_chip* devm_kzalloc (struct device*,int,int ) ;
 int * devm_reset_control_get_shared (struct device*,char*) ;
 int devm_snd_soc_register_component (struct device*,int *,int ,int) ;
 int memcpy (void*,int ,int) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 int platform_set_drvdata (struct platform_device*,struct uniphier_aio_chip*) ;
 int reset_control_assert (int *) ;
 int reset_control_deassert (int *) ;
 int spin_lock_init (int *) ;
 int * syscon_regmap_lookup_by_phandle (int ,char*) ;
 int uniphier_aio_component ;
 int uniphier_aiodma_soc_register_platform (struct platform_device*) ;

int uniphier_aio_probe(struct platform_device *pdev)
{
 struct uniphier_aio_chip *chip;
 struct device *dev = &pdev->dev;
 int ret, i, j;

 chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->chip_spec = of_device_get_match_data(dev);
 if (!chip->chip_spec)
  return -EINVAL;

 chip->regmap_sg = syscon_regmap_lookup_by_phandle(dev->of_node,
         "socionext,syscon");
 if (IS_ERR(chip->regmap_sg)) {
  if (PTR_ERR(chip->regmap_sg) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  chip->regmap_sg = ((void*)0);
 }

 chip->clk = devm_clk_get(dev, "aio");
 if (IS_ERR(chip->clk))
  return PTR_ERR(chip->clk);

 chip->rst = devm_reset_control_get_shared(dev, "aio");
 if (IS_ERR(chip->rst))
  return PTR_ERR(chip->rst);

 chip->num_aios = chip->chip_spec->num_dais;
 chip->num_wup_aios = chip->num_aios;
 chip->aios = devm_kcalloc(dev,
      chip->num_aios, sizeof(struct uniphier_aio),
      GFP_KERNEL);
 if (!chip->aios)
  return -ENOMEM;

 chip->num_plls = chip->chip_spec->num_plls;
 chip->plls = devm_kcalloc(dev,
      chip->num_plls,
      sizeof(struct uniphier_aio_pll),
      GFP_KERNEL);
 if (!chip->plls)
  return -ENOMEM;
 memcpy(chip->plls, chip->chip_spec->plls,
        sizeof(struct uniphier_aio_pll) * chip->num_plls);

 for (i = 0; i < chip->num_aios; i++) {
  struct uniphier_aio *aio = &chip->aios[i];

  aio->chip = chip;
  aio->fmt = SND_SOC_DAIFMT_I2S;

  for (j = 0; j < ARRAY_SIZE(aio->sub); j++) {
   struct uniphier_aio_sub *sub = &aio->sub[j];

   sub->aio = aio;
   spin_lock_init(&sub->lock);
  }
 }

 chip->pdev = pdev;
 platform_set_drvdata(pdev, chip);

 ret = clk_prepare_enable(chip->clk);
 if (ret)
  return ret;

 ret = reset_control_deassert(chip->rst);
 if (ret)
  goto err_out_clock;

 ret = devm_snd_soc_register_component(dev, &uniphier_aio_component,
           chip->chip_spec->dais,
           chip->chip_spec->num_dais);
 if (ret) {
  dev_err(dev, "Register component failed.\n");
  goto err_out_reset;
 }

 ret = uniphier_aiodma_soc_register_platform(pdev);
 if (ret) {
  dev_err(dev, "Register platform failed.\n");
  goto err_out_reset;
 }

 return 0;

err_out_reset:
 reset_control_assert(chip->rst);

err_out_clock:
 clk_disable_unprepare(chip->clk);

 return ret;
}
