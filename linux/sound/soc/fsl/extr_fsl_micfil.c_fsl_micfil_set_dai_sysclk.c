
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct fsl_micfil {int mclk; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int clk_get_rate (int ) ;
 int dev_err (struct device*,char*,int ,unsigned int) ;
 int fsl_micfil_set_mclk_rate (struct fsl_micfil*,unsigned int) ;
 struct fsl_micfil* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_micfil_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
         unsigned int freq, int dir)
{
 struct fsl_micfil *micfil = snd_soc_dai_get_drvdata(dai);
 struct device *dev = &micfil->pdev->dev;

 int ret;

 if (!freq)
  return 0;

 ret = fsl_micfil_set_mclk_rate(micfil, freq);
 if (ret < 0)
  dev_err(dev, "failed to set mclk[%lu] to rate %u\n",
   clk_get_rate(micfil->mclk), freq);

 return ret;
}
