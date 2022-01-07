
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_pdm {int dclk; int map; } ;


 int axg_pdm_filters_enable (int ,int) ;
 int clk_disable_unprepare (int ) ;
 struct axg_pdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void axg_pdm_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct axg_pdm *priv = snd_soc_dai_get_drvdata(dai);

 axg_pdm_filters_enable(priv->map, 0);
 clk_disable_unprepare(priv->dclk);
}
