
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct atmel_pdmic {int pclk; int gclk; int regmap; } ;


 int PDMIC_IDR ;
 int PDMIC_IDR_OVRE ;
 int clk_disable_unprepare (int ) ;
 int regmap_write (int ,int ,int ) ;
 struct atmel_pdmic* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static void atmel_pdmic_cpu_dai_shutdown(struct snd_pcm_substream *substream,
     struct snd_soc_dai *cpu_dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_pdmic *dd = snd_soc_card_get_drvdata(rtd->card);


 regmap_write(dd->regmap, PDMIC_IDR, PDMIC_IDR_OVRE);

 clk_disable_unprepare(dd->gclk);
 clk_disable_unprepare(dd->pclk);
}
