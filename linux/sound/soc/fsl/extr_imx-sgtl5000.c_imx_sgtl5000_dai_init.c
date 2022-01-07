
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int codec_dai; TYPE_1__* card; } ;
struct imx_sgtl5000_data {int clk_frequency; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int SGTL5000_SYSCLK ;
 int SND_SOC_CLOCK_IN ;
 int dev_err (struct device*,char*) ;
 struct imx_sgtl5000_data* snd_soc_card_get_drvdata (TYPE_1__*) ;
 int snd_soc_dai_set_sysclk (int ,int ,int ,int ) ;

__attribute__((used)) static int imx_sgtl5000_dai_init(struct snd_soc_pcm_runtime *rtd)
{
 struct imx_sgtl5000_data *data = snd_soc_card_get_drvdata(rtd->card);
 struct device *dev = rtd->card->dev;
 int ret;

 ret = snd_soc_dai_set_sysclk(rtd->codec_dai, SGTL5000_SYSCLK,
         data->clk_frequency, SND_SOC_CLOCK_IN);
 if (ret) {
  dev_err(dev, "could not set codec driver clock params\n");
  return ret;
 }

 return 0;
}
