
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int WCD9335_CDC_RX0_RX_PATH_CTL ;
 int WCD9335_CDC_RX0_RX_PATH_MIX_CTL ;
 int WCD9335_CDC_RX_PGA_MUTE_DISABLE ;
 int WCD9335_CDC_RX_PGA_MUTE_EN_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int wcd9335_codec_enable_ear_pa(struct snd_soc_dapm_widget *w,
           struct snd_kcontrol *kc, int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:



  usleep_range(5000, 5500);
  snd_soc_component_update_bits(comp,
     WCD9335_CDC_RX0_RX_PATH_CTL,
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
     WCD9335_CDC_RX_PGA_MUTE_DISABLE);

  if ((snd_soc_component_read32(comp,
     WCD9335_CDC_RX0_RX_PATH_MIX_CTL)) &
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK)
   snd_soc_component_update_bits(comp,
     WCD9335_CDC_RX0_RX_PATH_MIX_CTL,
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
     WCD9335_CDC_RX_PGA_MUTE_DISABLE);
  break;
 case 129:



  usleep_range(5000, 5500);

  break;
 };

 return 0;
}
