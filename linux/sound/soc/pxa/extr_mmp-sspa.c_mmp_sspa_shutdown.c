
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sspa_priv {int sysclk; TYPE_1__* sspa; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 int clk_disable (int ) ;
 struct sspa_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void mmp_sspa_shutdown(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct sspa_priv *priv = snd_soc_dai_get_drvdata(dai);

 clk_disable(priv->sspa->clk);
 clk_disable(priv->sysclk);

}
