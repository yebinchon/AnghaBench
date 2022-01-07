
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct pcm512x_priv {int pll_in; int pll_out; TYPE_1__* supplies; int sclk; struct regmap* regmap; TYPE_3__* supply_nb; int mutex; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_7__ {int notifier_call; } ;
struct TYPE_6__ {int consumer; int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IS_ERR (int ) ;
 int PCM512x_POWER ;
 int PCM512x_RESET ;
 int PCM512x_RQST ;
 int PCM512x_RSTM ;
 int PCM512x_RSTR ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct pcm512x_priv*) ;
 int devm_clk_get (struct device*,int *) ;
 struct pcm512x_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int devm_regulator_register_notifier (int ,TYPE_3__*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int mutex_init (int *) ;
 scalar_t__ of_property_read_u32 (struct device_node const*,char*,int*) ;
 int pcm512x_component_driver ;
 int pcm512x_dai ;
 int pcm512x_regulator_event_0 ;
 int pcm512x_regulator_event_1 ;
 int pcm512x_regulator_event_2 ;
 int * pcm512x_supply_names ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_idle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int) ;
 int regulator_bulk_disable (int,TYPE_1__*) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;

int pcm512x_probe(struct device *dev, struct regmap *regmap)
{
 struct pcm512x_priv *pcm512x;
 int i, ret;

 pcm512x = devm_kzalloc(dev, sizeof(struct pcm512x_priv), GFP_KERNEL);
 if (!pcm512x)
  return -ENOMEM;

 mutex_init(&pcm512x->mutex);

 dev_set_drvdata(dev, pcm512x);
 pcm512x->regmap = regmap;

 for (i = 0; i < ARRAY_SIZE(pcm512x->supplies); i++)
  pcm512x->supplies[i].supply = pcm512x_supply_names[i];

 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(pcm512x->supplies),
          pcm512x->supplies);
 if (ret != 0) {
  dev_err(dev, "Failed to get supplies: %d\n", ret);
  return ret;
 }

 pcm512x->supply_nb[0].notifier_call = pcm512x_regulator_event_0;
 pcm512x->supply_nb[1].notifier_call = pcm512x_regulator_event_1;
 pcm512x->supply_nb[2].notifier_call = pcm512x_regulator_event_2;

 for (i = 0; i < ARRAY_SIZE(pcm512x->supplies); i++) {
  ret = devm_regulator_register_notifier(
      pcm512x->supplies[i].consumer,
      &pcm512x->supply_nb[i]);
  if (ret != 0) {
   dev_err(dev,
    "Failed to register regulator notifier: %d\n",
    ret);
  }
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(pcm512x->supplies),
        pcm512x->supplies);
 if (ret != 0) {
  dev_err(dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }


 ret = regmap_write(regmap, PCM512x_RESET,
      PCM512x_RSTM | PCM512x_RSTR);
 if (ret != 0) {
  dev_err(dev, "Failed to reset device: %d\n", ret);
  goto err;
 }

 ret = regmap_write(regmap, PCM512x_RESET, 0);
 if (ret != 0) {
  dev_err(dev, "Failed to reset device: %d\n", ret);
  goto err;
 }

 pcm512x->sclk = devm_clk_get(dev, ((void*)0));
 if (PTR_ERR(pcm512x->sclk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;
 if (!IS_ERR(pcm512x->sclk)) {
  ret = clk_prepare_enable(pcm512x->sclk);
  if (ret != 0) {
   dev_err(dev, "Failed to enable SCLK: %d\n", ret);
   return ret;
  }
 }


 ret = regmap_update_bits(pcm512x->regmap, PCM512x_POWER,
     PCM512x_RQST, PCM512x_RQST);
 if (ret != 0) {
  dev_err(dev, "Failed to request standby: %d\n",
   ret);
  goto err_clk;
 }

 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);
 pm_runtime_idle(dev);
 ret = devm_snd_soc_register_component(dev, &pcm512x_component_driver,
        &pcm512x_dai, 1);
 if (ret != 0) {
  dev_err(dev, "Failed to register CODEC: %d\n", ret);
  goto err_pm;
 }

 return 0;

err_pm:
 pm_runtime_disable(dev);
err_clk:
 if (!IS_ERR(pcm512x->sclk))
  clk_disable_unprepare(pcm512x->sclk);
err:
 regulator_bulk_disable(ARRAY_SIZE(pcm512x->supplies),
         pcm512x->supplies);
 return ret;
}
