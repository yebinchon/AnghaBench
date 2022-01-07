
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct atmel_pdmic {int regmap; } ;


 int PDMIC_CDR ;
 int regmap_read (int ,int ,int *) ;
 struct atmel_pdmic* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int atmel_pdmic_cpu_dai_prepare(struct snd_pcm_substream *substream,
     struct snd_soc_dai *cpu_dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_pdmic *dd = snd_soc_card_get_drvdata(rtd->card);
 u32 val;


 return regmap_read(dd->regmap, PDMIC_CDR, &val);
}
