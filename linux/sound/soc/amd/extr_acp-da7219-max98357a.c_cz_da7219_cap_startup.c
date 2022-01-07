
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct acp_platform_info {int capture_channel; int cap_i2s_instance; } ;


 int CAP_CHANNEL1 ;
 int DUAL_CHANNEL ;
 int I2S_SP_INSTANCE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int constraints_channels ;
 int constraints_rates ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct acp_platform_info* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int cz_da7219_cap_startup(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_card *card = rtd->card;
 struct acp_platform_info *machine = snd_soc_card_get_drvdata(card);





 runtime->hw.channels_max = DUAL_CHANNEL;
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
       &constraints_channels);
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
       &constraints_rates);

 machine->cap_i2s_instance = I2S_SP_INSTANCE;
 machine->capture_channel = CAP_CHANNEL1;
 return 0;
}
