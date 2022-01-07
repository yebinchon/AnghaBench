
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int notifier_call; } ;
struct max9860_priv {int psclk; unsigned long pclk_rate; struct clk* dvddio; struct clk* regmap; TYPE_3__ dvddio_nb; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct clk {int dummy; } ;
struct TYPE_6__ {int num_reg_defaults; TYPE_1__* reg_defaults; } ;
struct TYPE_5__ {int reg; int def; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int MAX9860_INTRSTATUS ;
 int MAX9860_PSCLK_SHIFT ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (struct device*,char*) ;
 unsigned long clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 int dev_dbg (struct device*,char*,unsigned long,unsigned long) ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_set_drvdata (struct device*,struct max9860_priv*) ;
 struct max9860_priv* devm_kzalloc (struct device*,int,int ) ;
 struct clk* devm_regmap_init_i2c (struct i2c_client*,TYPE_2__*) ;
 struct clk* devm_regulator_get (struct device*,char*) ;
 int devm_regulator_register_notifier (struct clk*,TYPE_3__*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int max9860_component_driver ;
 int max9860_dai ;
 int max9860_dvddio_event ;
 TYPE_2__ max9860_regmap ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_idle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int regcache_cache_bypass (struct clk*,int) ;
 int regmap_read (struct clk*,int ,int*) ;
 int regmap_write (struct clk*,int ,int ) ;
 int regulator_disable (struct clk*) ;
 int regulator_enable (struct clk*) ;

__attribute__((used)) static int max9860_probe(struct i2c_client *i2c)
{
 struct device *dev = &i2c->dev;
 struct max9860_priv *max9860;
 int ret;
 struct clk *mclk;
 unsigned long mclk_rate;
 int i;
 int intr;

 max9860 = devm_kzalloc(dev, sizeof(struct max9860_priv), GFP_KERNEL);
 if (!max9860)
  return -ENOMEM;

 max9860->dvddio = devm_regulator_get(dev, "DVDDIO");
 if (IS_ERR(max9860->dvddio)) {
  ret = PTR_ERR(max9860->dvddio);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Failed to get DVDDIO supply: %d\n", ret);
  return ret;
 }

 max9860->dvddio_nb.notifier_call = max9860_dvddio_event;

 ret = devm_regulator_register_notifier(max9860->dvddio,
            &max9860->dvddio_nb);
 if (ret)
  dev_err(dev, "Failed to register DVDDIO notifier: %d\n", ret);

 ret = regulator_enable(max9860->dvddio);
 if (ret != 0) {
  dev_err(dev, "Failed to enable DVDDIO: %d\n", ret);
  return ret;
 }

 max9860->regmap = devm_regmap_init_i2c(i2c, &max9860_regmap);
 if (IS_ERR(max9860->regmap)) {
  ret = PTR_ERR(max9860->regmap);
  goto err_regulator;
 }

 dev_set_drvdata(dev, max9860);






 mclk = clk_get(dev, "mclk");

 if (IS_ERR(mclk)) {
  ret = PTR_ERR(mclk);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Failed to get MCLK: %d\n", ret);
  goto err_regulator;
 }

 mclk_rate = clk_get_rate(mclk);
 clk_put(mclk);

 if (mclk_rate > 60000000 || mclk_rate < 10000000) {
  dev_err(dev, "Bad mclk %luHz (needs 10MHz - 60MHz)\n",
   mclk_rate);
  ret = -EINVAL;
  goto err_regulator;
 }
 if (mclk_rate >= 40000000)
  max9860->psclk = 3;
 else if (mclk_rate >= 20000000)
  max9860->psclk = 2;
 else
  max9860->psclk = 1;
 max9860->pclk_rate = mclk_rate >> (max9860->psclk - 1);
 max9860->psclk <<= MAX9860_PSCLK_SHIFT;
 dev_dbg(dev, "mclk %lu pclk %lu\n", mclk_rate, max9860->pclk_rate);

 regcache_cache_bypass(max9860->regmap, 1);
 for (i = 0; i < max9860_regmap.num_reg_defaults; ++i) {
  ret = regmap_write(max9860->regmap,
       max9860_regmap.reg_defaults[i].reg,
       max9860_regmap.reg_defaults[i].def);
  if (ret) {
   dev_err(dev, "Failed to initialize register %u: %d\n",
    max9860_regmap.reg_defaults[i].reg, ret);
   goto err_regulator;
  }
 }
 regcache_cache_bypass(max9860->regmap, 0);

 ret = regmap_read(max9860->regmap, MAX9860_INTRSTATUS, &intr);
 if (ret) {
  dev_err(dev, "Failed to clear INTRSTATUS: %d\n", ret);
  goto err_regulator;
 }

 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);
 pm_runtime_idle(dev);

 ret = devm_snd_soc_register_component(dev, &max9860_component_driver,
           &max9860_dai, 1);
 if (ret) {
  dev_err(dev, "Failed to register CODEC: %d\n", ret);
  goto err_pm;
 }

 return 0;

err_pm:
 pm_runtime_disable(dev);
err_regulator:
 regulator_disable(max9860->dvddio);
 return ret;
}
