
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct fsl_sai {int regmap; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; } ;


 int FSL_SAI_CR3_TRCE_MASK ;
 int FSL_SAI_xCR3 (int,unsigned int) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct fsl_sai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void fsl_sai_shutdown(struct snd_pcm_substream *substream,
  struct snd_soc_dai *cpu_dai)
{
 struct fsl_sai *sai = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned int ofs = sai->soc_data->reg_offset;
 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;

 regmap_update_bits(sai->regmap, FSL_SAI_xCR3(tx, ofs),
      FSL_SAI_CR3_TRCE_MASK, 0);
}
