
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tdm_info {int dai_wclk; int dai_pclk; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct zx_tdm_info* dev_get_drvdata (int ) ;

__attribute__((used)) static int zx_tdm_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct zx_tdm_info *zx_tdm = dev_get_drvdata(dai->dev);
 int ret;

 ret = clk_prepare_enable(zx_tdm->dai_wclk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(zx_tdm->dai_pclk);
 if (ret) {
  clk_disable_unprepare(zx_tdm->dai_wclk);
  return ret;
 }

 return 0;
}
