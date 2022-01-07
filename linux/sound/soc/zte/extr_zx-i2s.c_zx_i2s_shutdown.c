
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_i2s_info {int dai_pclk; int dai_wclk; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct zx_i2s_info* dev_get_drvdata (int ) ;

__attribute__((used)) static void zx_i2s_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct zx_i2s_info *zx_i2s = dev_get_drvdata(dai->dev);

 clk_disable_unprepare(zx_i2s->dai_wclk);
 clk_disable_unprepare(zx_i2s->dai_pclk);
}
