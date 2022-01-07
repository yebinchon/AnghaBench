
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int ALC ;
 int ALC_CTL1 ;
 int LMTH0 ;
 int L_IVC ;
 int MGAIN0 ;
 int PMADL ;
 int PMADR ;
 int PMMP ;
 int PW_MGMT1 ;
 int PW_MGMT3 ;
 int R_IVC ;
 int SG_SL1 ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int TIMER ;
 int WTM (int) ;
 int ZTM (int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int ak4642_dai_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 struct snd_soc_component *component = dai->component;

 if (is_play) {
  snd_soc_component_write(component, L_IVC, 0x91);
  snd_soc_component_write(component, R_IVC, 0x91);
 } else {
  snd_soc_component_update_bits(component, SG_SL1, PMMP | MGAIN0, PMMP | MGAIN0);
  snd_soc_component_write(component, TIMER, ZTM(0x3) | WTM(0x3));
  snd_soc_component_write(component, ALC_CTL1, ALC | LMTH0);
  snd_soc_component_update_bits(component, PW_MGMT1, PMADL, PMADL);
  snd_soc_component_update_bits(component, PW_MGMT3, PMADR, PMADR);
 }

 return 0;
}
