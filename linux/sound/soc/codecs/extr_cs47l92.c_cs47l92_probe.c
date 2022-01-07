
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct madera {int regmap; int regmap_32bit; int dev; int irq_dev; } ;
struct TYPE_18__ {int num_inputs; TYPE_1__* adsp; TYPE_3__* dev; struct madera* madera; } ;
struct cs47l92 {TYPE_6__ core; int * fll; } ;
struct TYPE_16__ {char* part; int num; int rev; int num_mems; int lock_regions; int * mem; int base; int regmap; int dev; int type; } ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int CS47L92_DIG_VU ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int MADERA_DSP1_CONFIG_1 ;
 scalar_t__ MADERA_FLL1_CONTROL_1 ;
 scalar_t__ MADERA_FLL2_CONTROL_1 ;
 int MADERA_IRQ_DSP_IRQ1 ;
 int MADERA_MAX_DAI ;
 int WMFW_ADSP2 ;
 int WM_ADSP2_REGION_1_9 ;
 int cs47l92_adsp2_irq ;
 int * cs47l92_dai ;
 int * cs47l92_digital_vu ;
 int * cs47l92_dsp1_regions ;
 int dev_dbg (TYPE_3__*,char*) ;
 int dev_err (TYPE_3__*,char*,int) ;
 struct madera* dev_get_drvdata (int ) ;
 int dev_warn (TYPE_3__*,char*,int) ;
 struct cs47l92* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_snd_soc_register_component (TYPE_3__*,int *,int *,int) ;
 int madera_core_free (TYPE_6__*) ;
 int madera_core_init (TYPE_6__*) ;
 int madera_free_bus_error_irq (TYPE_6__*,int ) ;
 int madera_free_irq (struct madera*,int ,struct cs47l92*) ;
 int madera_init_bus_error_irq (TYPE_6__*,int ,int ) ;
 int madera_init_dai (TYPE_6__*,int) ;
 int madera_init_fll (struct madera*,int,scalar_t__,int *) ;
 int madera_request_irq (struct madera*,int ,char*,int ,struct cs47l92*) ;
 int madera_set_irq_wake (struct madera*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct cs47l92*) ;
 int pm_runtime_disable (TYPE_3__*) ;
 int pm_runtime_enable (TYPE_3__*) ;
 int pm_runtime_idle (TYPE_3__*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int soc_component_dev_cs47l92 ;
 int wm_adsp2_bus_error ;
 int wm_adsp2_init (TYPE_1__*) ;
 int wm_adsp2_remove (TYPE_1__*) ;

__attribute__((used)) static int cs47l92_probe(struct platform_device *pdev)
{
 struct madera *madera = dev_get_drvdata(pdev->dev.parent);
 struct cs47l92 *cs47l92;
 int i, ret;

 BUILD_BUG_ON(ARRAY_SIZE(cs47l92_dai) > MADERA_MAX_DAI);


 if (!madera->irq_dev) {
  dev_dbg(&pdev->dev, "irqchip driver not ready\n");
  return -EPROBE_DEFER;
 }

 cs47l92 = devm_kzalloc(&pdev->dev, sizeof(struct cs47l92), GFP_KERNEL);
 if (!cs47l92)
  return -ENOMEM;

 platform_set_drvdata(pdev, cs47l92);

 cs47l92->core.madera = madera;
 cs47l92->core.dev = &pdev->dev;
 cs47l92->core.num_inputs = 8;

 ret = madera_core_init(&cs47l92->core);
 if (ret)
  return ret;

 ret = madera_request_irq(madera, MADERA_IRQ_DSP_IRQ1,
     "ADSP2 Compressed IRQ", cs47l92_adsp2_irq,
     cs47l92);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to request DSP IRQ: %d\n", ret);
  goto error_core;
 }

 ret = madera_set_irq_wake(madera, MADERA_IRQ_DSP_IRQ1, 1);
 if (ret)
  dev_warn(&pdev->dev, "Failed to set DSP IRQ wake: %d\n", ret);

 cs47l92->core.adsp[0].part = "cs47l92";
 cs47l92->core.adsp[0].num = 1;
 cs47l92->core.adsp[0].type = WMFW_ADSP2;
 cs47l92->core.adsp[0].rev = 2;
 cs47l92->core.adsp[0].dev = madera->dev;
 cs47l92->core.adsp[0].regmap = madera->regmap_32bit;

 cs47l92->core.adsp[0].base = MADERA_DSP1_CONFIG_1;
 cs47l92->core.adsp[0].mem = cs47l92_dsp1_regions;
 cs47l92->core.adsp[0].num_mems = ARRAY_SIZE(cs47l92_dsp1_regions);

 cs47l92->core.adsp[0].lock_regions = WM_ADSP2_REGION_1_9;

 ret = wm_adsp2_init(&cs47l92->core.adsp[0]);
 if (ret != 0)
  goto error_dsp_irq;

 ret = madera_init_bus_error_irq(&cs47l92->core, 0, wm_adsp2_bus_error);
 if (ret != 0) {
  wm_adsp2_remove(&cs47l92->core.adsp[0]);
  goto error_adsp;
 }

 madera_init_fll(madera, 1, MADERA_FLL1_CONTROL_1 - 1,
   &cs47l92->fll[0]);
 madera_init_fll(madera, 2, MADERA_FLL2_CONTROL_1 - 1,
   &cs47l92->fll[1]);

 for (i = 0; i < ARRAY_SIZE(cs47l92_dai); i++)
  madera_init_dai(&cs47l92->core, i);


 for (i = 0; i < ARRAY_SIZE(cs47l92_digital_vu); i++)
  regmap_update_bits(madera->regmap, cs47l92_digital_vu[i],
       CS47L92_DIG_VU, CS47L92_DIG_VU);

 pm_runtime_enable(&pdev->dev);
 pm_runtime_idle(&pdev->dev);

 ret = devm_snd_soc_register_component(&pdev->dev,
           &soc_component_dev_cs47l92,
           cs47l92_dai,
           ARRAY_SIZE(cs47l92_dai));
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register component: %d\n", ret);
  goto error_pm_runtime;
 }

 return ret;

error_pm_runtime:
 pm_runtime_disable(&pdev->dev);
 madera_free_bus_error_irq(&cs47l92->core, 0);
error_adsp:
 wm_adsp2_remove(&cs47l92->core.adsp[0]);
error_dsp_irq:
 madera_set_irq_wake(madera, MADERA_IRQ_DSP_IRQ1, 0);
 madera_free_irq(madera, MADERA_IRQ_DSP_IRQ1, cs47l92);
error_core:
 madera_core_free(&cs47l92->core);

 return ret;
}
