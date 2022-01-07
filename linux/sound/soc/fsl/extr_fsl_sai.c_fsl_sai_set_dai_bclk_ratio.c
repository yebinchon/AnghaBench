
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct fsl_sai {unsigned int bclk_ratio; } ;


 struct fsl_sai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_sai_set_dai_bclk_ratio(struct snd_soc_dai *dai,
          unsigned int ratio)
{
 struct fsl_sai *sai = snd_soc_dai_get_drvdata(dai);

 sai->bclk_ratio = ratio;

 return 0;
}
