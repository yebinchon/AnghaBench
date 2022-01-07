
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct axg_pdm {int pclk; int sysclk; } ;


 int clk_disable_unprepare (int ) ;
 struct axg_pdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_pdm_dai_remove(struct snd_soc_dai *dai)
{
 struct axg_pdm *priv = snd_soc_dai_get_drvdata(dai);

 clk_disable_unprepare(priv->sysclk);
 clk_disable_unprepare(priv->pclk);

 return 0;
}
