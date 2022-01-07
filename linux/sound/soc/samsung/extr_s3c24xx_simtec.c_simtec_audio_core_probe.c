
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int platform_data; } ;
struct snd_soc_card {TYPE_2__ dev; TYPE_1__* dai_link; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__* dai_link; } ;
struct TYPE_6__ {int dai_fmt; int * ops; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int SND_SOC_DAIFMT_CBM_CFM ;
 int SND_SOC_DAIFMT_I2S ;
 int SND_SOC_DAIFMT_NB_NF ;
 int attach_gpio_amp (TYPE_2__*,int ) ;
 int clk_get (TYPE_2__*,char*) ;
 int clk_get_rate (int ) ;
 int clk_put (int ) ;
 int detach_gpio_amp (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*,int ) ;
 int pdata ;
 int platform_device_add (struct snd_soc_card*) ;
 struct snd_soc_card* platform_device_alloc (char*,int) ;
 int platform_device_put (struct snd_soc_card*) ;
 int platform_set_drvdata (struct snd_soc_card*,struct snd_soc_card*) ;
 int simtec_call_startup (int ) ;
 int simtec_snd_ops ;
 int xtal_clk ;

int simtec_audio_core_probe(struct platform_device *pdev,
       struct snd_soc_card *card)
{
 struct platform_device *snd_dev;
 int ret;

 card->dai_link->ops = &simtec_snd_ops;
 card->dai_link->dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
      SND_SOC_DAIFMT_CBM_CFM;

 pdata = pdev->dev.platform_data;
 if (!pdata) {
  dev_err(&pdev->dev, "no platform data supplied\n");
  return -EINVAL;
 }

 simtec_call_startup(pdata);

 xtal_clk = clk_get(&pdev->dev, "xtal");
 if (IS_ERR(xtal_clk)) {
  dev_err(&pdev->dev, "could not get clkout0\n");
  return -EINVAL;
 }

 dev_info(&pdev->dev, "xtal rate is %ld\n", clk_get_rate(xtal_clk));

 ret = attach_gpio_amp(&pdev->dev, pdata);
 if (ret)
  goto err_clk;

 snd_dev = platform_device_alloc("soc-audio", -1);
 if (!snd_dev) {
  dev_err(&pdev->dev, "failed to alloc soc-audio devicec\n");
  ret = -ENOMEM;
  goto err_gpio;
 }

 platform_set_drvdata(snd_dev, card);

 ret = platform_device_add(snd_dev);
 if (ret) {
  dev_err(&pdev->dev, "failed to add soc-audio dev\n");
  goto err_pdev;
 }

 platform_set_drvdata(pdev, snd_dev);
 return 0;

err_pdev:
 platform_device_put(snd_dev);

err_gpio:
 detach_gpio_amp(pdata);

err_clk:
 clk_put(xtal_clk);
 return ret;
}
