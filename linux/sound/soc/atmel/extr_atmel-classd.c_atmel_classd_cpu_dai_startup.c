
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct atmel_classd {int pclk; int regmap; } ;


 int CLASSD_THR ;
 int clk_prepare_enable (int ) ;
 int regmap_write (int ,int ,int) ;
 struct atmel_classd* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int atmel_classd_cpu_dai_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *cpu_dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_classd *dd = snd_soc_card_get_drvdata(rtd->card);

 regmap_write(dd->regmap, CLASSD_THR, 0x0);

 return clk_prepare_enable(dd->pclk);
}
