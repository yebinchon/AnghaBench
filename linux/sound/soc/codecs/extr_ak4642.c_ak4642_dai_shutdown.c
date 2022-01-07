
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int ALC ;
 int ALC_CTL1 ;
 int PMADL ;
 int PMADR ;
 int PW_MGMT1 ;
 int PW_MGMT3 ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void ak4642_dai_shutdown(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 struct snd_soc_component *component = dai->component;

 if (is_play) {
 } else {

  snd_soc_component_update_bits(component, PW_MGMT1, PMADL, 0);
  snd_soc_component_update_bits(component, PW_MGMT3, PMADR, 0);
  snd_soc_component_update_bits(component, ALC_CTL1, ALC, 0);
 }
}
