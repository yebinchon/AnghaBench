
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int runtime; } ;
struct adau1977 {int slot_width; int max_master_fs; scalar_t__ master; int constraints; scalar_t__ right_j; } ;


 int SNDRV_PCM_FMTBIT_S16_BE ;
 int SNDRV_PCM_FMTBIT_S16_LE ;
 int SNDRV_PCM_FMTBIT_S24_BE ;
 int SNDRV_PCM_FMTBIT_S24_LE ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 int snd_pcm_hw_constraint_mask64 (int ,int ,int) ;
 int snd_pcm_hw_constraint_minmax (int ,int ,int,int ) ;
 struct adau1977* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int adau1977_startup(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct adau1977 *adau1977 = snd_soc_component_get_drvdata(dai->component);
 u64 formats = 0;

 if (adau1977->slot_width == 16)
  formats = SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S16_BE;
 else if (adau1977->right_j || adau1977->slot_width == 24)
  formats = SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S16_BE |
   SNDRV_PCM_FMTBIT_S24_LE | SNDRV_PCM_FMTBIT_S24_BE;

 snd_pcm_hw_constraint_list(substream->runtime, 0,
  SNDRV_PCM_HW_PARAM_RATE, &adau1977->constraints);

 if (adau1977->master)
  snd_pcm_hw_constraint_minmax(substream->runtime,
   SNDRV_PCM_HW_PARAM_RATE, 8000, adau1977->max_master_fs);

 if (formats != 0)
  snd_pcm_hw_constraint_mask64(substream->runtime,
   SNDRV_PCM_HW_PARAM_FORMAT, formats);

 return 0;
}
