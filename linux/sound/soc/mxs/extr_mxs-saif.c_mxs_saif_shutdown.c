
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mxs_saif {int clk; } ;


 int clk_unprepare (int ) ;
 struct mxs_saif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void mxs_saif_shutdown(struct snd_pcm_substream *substream,
         struct snd_soc_dai *cpu_dai)
{
 struct mxs_saif *saif = snd_soc_dai_get_drvdata(cpu_dai);

 clk_unprepare(saif->clk);
}
