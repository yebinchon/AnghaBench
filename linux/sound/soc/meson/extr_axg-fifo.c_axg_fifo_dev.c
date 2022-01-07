
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct device* dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct device {int dummy; } ;


 struct snd_soc_dai* axg_fifo_dai (struct snd_pcm_substream*) ;

__attribute__((used)) static struct device *axg_fifo_dev(struct snd_pcm_substream *ss)
{
 struct snd_soc_dai *dai = axg_fifo_dai(ss);

 return dai->dev;
}
