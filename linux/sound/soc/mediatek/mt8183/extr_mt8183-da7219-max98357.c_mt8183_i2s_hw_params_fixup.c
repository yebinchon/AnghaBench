
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SNDRV_PCM_FORMAT_LAST ;
 int SNDRV_PCM_FORMAT_S32_LE ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int hw_param_mask (struct snd_pcm_hw_params*,int ) ;
 int params_set_format (struct snd_pcm_hw_params*,int ) ;
 int snd_mask_reset_range (int ,int ,int ) ;

__attribute__((used)) static int mt8183_i2s_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
          struct snd_pcm_hw_params *params)
{

 snd_mask_reset_range(hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT),
        0, SNDRV_PCM_FORMAT_LAST);

 params_set_format(params, SNDRV_PCM_FORMAT_S32_LE);

 return 0;
}
