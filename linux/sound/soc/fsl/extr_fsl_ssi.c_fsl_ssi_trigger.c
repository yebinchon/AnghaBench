
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct fsl_ssi {int dummy; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int fsl_ssi_config_disable (struct fsl_ssi*,int) ;
 int fsl_ssi_config_enable (struct fsl_ssi*,int) ;
 int fsl_ssi_is_ac97 (struct fsl_ssi*) ;
 int fsl_ssi_tx_ac97_saccst_setup (struct fsl_ssi*) ;
 struct fsl_ssi* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static int fsl_ssi_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct fsl_ssi *ssi = snd_soc_dai_get_drvdata(rtd->cpu_dai);
 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;

 switch (cmd) {
 case 130:
 case 131:
 case 132:







  if (tx && fsl_ssi_is_ac97(ssi))
   fsl_ssi_tx_ac97_saccst_setup(ssi);
  fsl_ssi_config_enable(ssi, tx);
  break;

 case 129:
 case 128:
 case 133:
  fsl_ssi_config_disable(ssi, tx);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
