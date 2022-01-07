
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct atmel_classd {int pclk; } ;


 int clk_disable_unprepare (int ) ;
 struct atmel_classd* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static void atmel_classd_cpu_dai_shutdown(struct snd_pcm_substream *substream,
     struct snd_soc_dai *cpu_dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_classd *dd = snd_soc_card_get_drvdata(rtd->card);

 clk_disable_unprepare(dd->pclk);
}
