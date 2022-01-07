
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_spdifrx_data {TYPE_1__* pdev; int kclk; struct snd_pcm_substream* substream; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 struct stm32_spdifrx_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_spdifrx_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *cpu_dai)
{
 struct stm32_spdifrx_data *spdifrx = snd_soc_dai_get_drvdata(cpu_dai);
 int ret;

 spdifrx->substream = substream;

 ret = clk_prepare_enable(spdifrx->kclk);
 if (ret)
  dev_err(&spdifrx->pdev->dev, "Enable kclk failed: %d\n", ret);

 return ret;
}
