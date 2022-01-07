
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int dummy; } ;


 struct snd_soc_dai* axg_fifo_dai (struct snd_pcm_substream*) ;
 struct axg_fifo* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static struct axg_fifo *axg_fifo_data(struct snd_pcm_substream *ss)
{
 struct snd_soc_dai *dai = axg_fifo_dai(ss);

 return snd_soc_dai_get_drvdata(dai);
}
