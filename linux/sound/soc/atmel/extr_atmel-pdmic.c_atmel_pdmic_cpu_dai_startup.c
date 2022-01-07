
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct atmel_pdmic {int regmap; struct snd_pcm_substream* substream; int gclk; int pclk; } ;


 int PDMIC_CR ;
 int PDMIC_IER ;
 int PDMIC_IER_OVRE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regmap_write (int ,int ,int ) ;
 struct atmel_pdmic* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int atmel_pdmic_cpu_dai_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *cpu_dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_pdmic *dd = snd_soc_card_get_drvdata(rtd->card);
 int ret;

 ret = clk_prepare_enable(dd->gclk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(dd->pclk);
 if (ret) {
  clk_disable_unprepare(dd->gclk);
  return ret;
 }


 regmap_write(dd->regmap, PDMIC_CR, 0);

 dd->substream = substream;


 regmap_write(dd->regmap, PDMIC_IER, PDMIC_IER_OVRE);

 return 0;
}
