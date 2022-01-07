
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct fsl_micfil {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 struct fsl_micfil* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_micfil_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct fsl_micfil *micfil = snd_soc_dai_get_drvdata(dai);

 if (!micfil) {
  dev_err(dai->dev,
   "micfil dai priv_data not set\n");
  return -EINVAL;
 }

 return 0;
}
