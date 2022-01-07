
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sspa_priv {TYPE_1__* sspa; int sysclk; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 int clk_enable (int ) ;
 struct sspa_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mmp_sspa_startup(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct sspa_priv *priv = snd_soc_dai_get_drvdata(dai);

 clk_enable(priv->sysclk);
 clk_enable(priv->sspa->clk);

 return 0;
}
