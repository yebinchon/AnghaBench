
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int pclk; } ;


 int clk_disable_unprepare (int ) ;
 struct axg_fifo* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void axg_frddr_dai_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct axg_fifo *fifo = snd_soc_dai_get_drvdata(dai);

 clk_disable_unprepare(fifo->pclk);
}
