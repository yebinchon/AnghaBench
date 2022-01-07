
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; TYPE_1__* driver; } ;
struct lpass_data {int variant; int lpaif_map; } ;
struct TYPE_2__ {int id; } ;


 int LPAIF_I2SCTL_REG (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,int ) ;
 struct lpass_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

int asoc_qcom_lpass_cpu_dai_probe(struct snd_soc_dai *dai)
{
 struct lpass_data *drvdata = snd_soc_dai_get_drvdata(dai);
 int ret;


 ret = regmap_write(drvdata->lpaif_map,
   LPAIF_I2SCTL_REG(drvdata->variant, dai->driver->id), 0);
 if (ret)
  dev_err(dai->dev, "error writing to i2sctl reg: %d\n", ret);

 return ret;
}
