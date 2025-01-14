
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_sai_sub_data {scalar_t__ master; int data_size; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int rate; } ;


 scalar_t__ STM_SAI_PROTOCOL_IS_SPDIF (struct stm32_sai_sub_data*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stm32_sai_configure_clock (struct snd_soc_dai*,struct snd_pcm_hw_params*) ;
 int stm32_sai_set_config (struct snd_soc_dai*,struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int stm32_sai_set_frame (struct snd_soc_dai*) ;
 int stm32_sai_set_iec958_status (struct stm32_sai_sub_data*,TYPE_1__*) ;
 int stm32_sai_set_slots (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_sai_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params,
          struct snd_soc_dai *cpu_dai)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int ret;

 sai->data_size = params_width(params);

 if (STM_SAI_PROTOCOL_IS_SPDIF(sai)) {

  substream->runtime->rate = params_rate(params);
  stm32_sai_set_iec958_status(sai, substream->runtime);
 } else {
  ret = stm32_sai_set_slots(cpu_dai);
  if (ret < 0)
   return ret;
  stm32_sai_set_frame(cpu_dai);
 }

 ret = stm32_sai_set_config(cpu_dai, substream, params);
 if (ret)
  return ret;

 if (sai->master)
  ret = stm32_sai_configure_clock(cpu_dai, params);

 return ret;
}
