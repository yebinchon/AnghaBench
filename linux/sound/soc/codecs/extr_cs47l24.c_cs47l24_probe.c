
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


struct TYPE_21__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_18__ {int num_inputs; TYPE_1__* adsp; struct arizona* arizona; } ;
struct cs47l24_priv {TYPE_14__ core; TYPE_2__* fll; } ;
struct arizona {int regmap; int dev; } ;
struct TYPE_20__ {int vco_mult; } ;
struct TYPE_19__ {char* part; int num; int num_mems; int mem; scalar_t__ base; int regmap; int dev; int type; } ;


 scalar_t__ ARIZONA_DSP1_CONTROL_1 ;
 scalar_t__ ARIZONA_FLL1_CONTROL_1 ;
 scalar_t__ ARIZONA_FLL2_CONTROL_1 ;
 int ARIZONA_IRQ_DSP_IRQ1 ;
 int ARIZONA_IRQ_FLL1_CLOCK_OK ;
 int ARIZONA_IRQ_FLL1_LOCK ;
 int ARIZONA_IRQ_FLL2_CLOCK_OK ;
 int ARIZONA_IRQ_FLL2_LOCK ;
 int ARIZONA_MAX_DAI ;
 TYPE_2__ ARIZONA_SAMPLE_RATE_2 ;
 int ARIZONA_SAMPLE_RATE_2_MASK ;
 TYPE_2__ ARIZONA_SAMPLE_RATE_3 ;
 int ARIZONA_SAMPLE_RATE_3_MASK ;
 int ARRAY_SIZE (TYPE_2__*) ;
 int BUILD_BUG_ON (int) ;
 int CONFIG_OF ;
 int CS47L24_DIG_VU ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int WMFW_ADSP2 ;
 int arizona_free_irq (struct arizona*,int ,struct cs47l24_priv*) ;
 int arizona_free_spk_irqs (struct arizona*) ;
 int arizona_init_common (struct arizona*) ;
 int arizona_init_dai (TYPE_14__*,int) ;
 int arizona_init_fll (struct arizona*,int,scalar_t__,int ,int ,TYPE_2__*) ;
 int arizona_init_spk_irqs (struct arizona*) ;
 int arizona_init_vol_limit (struct arizona*) ;
 int arizona_of_get_audio_pdata (struct arizona*) ;
 int arizona_request_irq (struct arizona*,int ,char*,int ,struct cs47l24_priv*) ;
 int arizona_set_irq_wake (struct arizona*,int ,int) ;
 int cs47l24_adsp2_irq ;
 TYPE_2__* cs47l24_dai ;
 TYPE_2__* cs47l24_digital_vu ;
 TYPE_2__* cs47l24_dsp2_regions ;
 int * cs47l24_dsp_regions ;
 int dev_err (TYPE_3__*,char*,int) ;
 struct arizona* dev_get_drvdata (int ) ;
 int dev_get_platdata (int ) ;
 int dev_warn (TYPE_3__*,char*,int) ;
 struct cs47l24_priv* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_snd_soc_register_component (TYPE_3__*,int *,TYPE_2__*,int) ;
 int platform_set_drvdata (struct platform_device*,struct cs47l24_priv*) ;
 int pm_runtime_enable (TYPE_3__*) ;
 int pm_runtime_idle (TYPE_3__*) ;
 int regmap_update_bits (int ,TYPE_2__,int,int) ;
 int soc_component_dev_cs47l24 ;
 int wm_adsp2_init (TYPE_1__*) ;

__attribute__((used)) static int cs47l24_probe(struct platform_device *pdev)
{
 struct arizona *arizona = dev_get_drvdata(pdev->dev.parent);
 struct cs47l24_priv *cs47l24;
 int i, ret;

 BUILD_BUG_ON(ARRAY_SIZE(cs47l24_dai) > ARIZONA_MAX_DAI);

 cs47l24 = devm_kzalloc(&pdev->dev, sizeof(struct cs47l24_priv),
          GFP_KERNEL);
 if (!cs47l24)
  return -ENOMEM;

 if (IS_ENABLED(CONFIG_OF)) {
  if (!dev_get_platdata(arizona->dev)) {
   ret = arizona_of_get_audio_pdata(arizona);
   if (ret < 0)
    return ret;
  }
 }

 platform_set_drvdata(pdev, cs47l24);

 cs47l24->core.arizona = arizona;
 cs47l24->core.num_inputs = 4;

 for (i = 1; i <= 2; i++) {
  cs47l24->core.adsp[i].part = "cs47l24";
  cs47l24->core.adsp[i].num = i + 1;
  cs47l24->core.adsp[i].type = WMFW_ADSP2;
  cs47l24->core.adsp[i].dev = arizona->dev;
  cs47l24->core.adsp[i].regmap = arizona->regmap;

  cs47l24->core.adsp[i].base = ARIZONA_DSP1_CONTROL_1 +
          (0x100 * i);
  cs47l24->core.adsp[i].mem = cs47l24_dsp_regions[i - 1];
  cs47l24->core.adsp[i].num_mems =
    ARRAY_SIZE(cs47l24_dsp2_regions);

  ret = wm_adsp2_init(&cs47l24->core.adsp[i]);
  if (ret != 0)
   return ret;
 }

 for (i = 0; i < ARRAY_SIZE(cs47l24->fll); i++)
  cs47l24->fll[i].vco_mult = 3;

 arizona_init_fll(arizona, 1, ARIZONA_FLL1_CONTROL_1 - 1,
    ARIZONA_IRQ_FLL1_LOCK, ARIZONA_IRQ_FLL1_CLOCK_OK,
    &cs47l24->fll[0]);
 arizona_init_fll(arizona, 2, ARIZONA_FLL2_CONTROL_1 - 1,
    ARIZONA_IRQ_FLL2_LOCK, ARIZONA_IRQ_FLL2_CLOCK_OK,
    &cs47l24->fll[1]);


 regmap_update_bits(arizona->regmap, ARIZONA_SAMPLE_RATE_2,
      ARIZONA_SAMPLE_RATE_2_MASK, 0x11);
 regmap_update_bits(arizona->regmap, ARIZONA_SAMPLE_RATE_3,
      ARIZONA_SAMPLE_RATE_3_MASK, 0x12);

 for (i = 0; i < ARRAY_SIZE(cs47l24_dai); i++)
  arizona_init_dai(&cs47l24->core, i);


 for (i = 0; i < ARRAY_SIZE(cs47l24_digital_vu); i++)
  regmap_update_bits(arizona->regmap, cs47l24_digital_vu[i],
       CS47L24_DIG_VU, CS47L24_DIG_VU);

 pm_runtime_enable(&pdev->dev);
 pm_runtime_idle(&pdev->dev);

 ret = arizona_request_irq(arizona, ARIZONA_IRQ_DSP_IRQ1,
      "ADSP2 Compressed IRQ", cs47l24_adsp2_irq,
      cs47l24);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
  return ret;
 }

 ret = arizona_set_irq_wake(arizona, ARIZONA_IRQ_DSP_IRQ1, 1);
 if (ret != 0)
  dev_warn(&pdev->dev,
    "Failed to set compressed IRQ as a wake source: %d\n",
    ret);

 arizona_init_common(arizona);

 ret = arizona_init_vol_limit(arizona);
 if (ret < 0)
  goto err_dsp_irq;
 ret = arizona_init_spk_irqs(arizona);
 if (ret < 0)
  goto err_dsp_irq;

 ret = devm_snd_soc_register_component(&pdev->dev,
           &soc_component_dev_cs47l24,
           cs47l24_dai,
           ARRAY_SIZE(cs47l24_dai));
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register component: %d\n", ret);
  goto err_spk_irqs;
 }

 return ret;

err_spk_irqs:
 arizona_free_spk_irqs(arizona);
err_dsp_irq:
 arizona_set_irq_wake(arizona, ARIZONA_IRQ_DSP_IRQ1, 0);
 arizona_free_irq(arizona, ARIZONA_IRQ_DSP_IRQ1, cs47l24);

 return ret;
}
