
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct aic23 {scalar_t__ requested_adc; scalar_t__ requested_dac; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int TLV320AIC23_ACTIVE ;
 struct aic23* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_is_active (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void tlv320aic23_shutdown(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct aic23 *aic23 = snd_soc_component_get_drvdata(component);


 if (!snd_soc_component_is_active(component)) {
  udelay(50);
  snd_soc_component_write(component, TLV320AIC23_ACTIVE, 0x0);
 }
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  aic23->requested_dac = 0;
 else
  aic23->requested_adc = 0;
}
