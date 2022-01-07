
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct fsl_ssi {int dummy; } ;


 int _fsl_ssi_set_dai_fmt (struct fsl_ssi*,unsigned int) ;
 scalar_t__ fsl_ssi_is_ac97 (struct fsl_ssi*) ;
 struct fsl_ssi* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_ssi_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct fsl_ssi *ssi = snd_soc_dai_get_drvdata(dai);


 if (fsl_ssi_is_ac97(ssi))
  return 0;

 return _fsl_ssi_set_dai_fmt(ssi, fmt);
}
