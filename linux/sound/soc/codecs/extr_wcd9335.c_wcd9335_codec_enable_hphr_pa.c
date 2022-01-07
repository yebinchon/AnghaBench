
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int hph_mode; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;






 int WCD9335_CDC_RX2_RX_PATH_CTL ;
 int WCD9335_CDC_RX2_RX_PATH_MIX_CTL ;
 int WCD9335_CDC_RX_PGA_MUTE_DISABLE ;
 int WCD9335_CDC_RX_PGA_MUTE_EN_MASK ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;
 int wcd9335_codec_hph_post_pa_config (struct wcd9335_codec*,int,int) ;

__attribute__((used)) static int wcd9335_codec_enable_hphr_pa(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kc, int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);
 struct wcd9335_codec *wcd = dev_get_drvdata(comp->dev);
 int hph_mode = wcd->hph_mode;

 switch (event) {
 case 128:
  break;
 case 130:




  usleep_range(7000, 7100);
  wcd9335_codec_hph_post_pa_config(wcd, hph_mode, event);
  snd_soc_component_update_bits(comp,
     WCD9335_CDC_RX2_RX_PATH_CTL,
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
     WCD9335_CDC_RX_PGA_MUTE_DISABLE);

  if ((snd_soc_component_read32(comp,
     WCD9335_CDC_RX2_RX_PATH_MIX_CTL)) &
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK)
   snd_soc_component_update_bits(comp,
     WCD9335_CDC_RX2_RX_PATH_MIX_CTL,
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
     WCD9335_CDC_RX_PGA_MUTE_DISABLE);

  break;

 case 129:
  wcd9335_codec_hph_post_pa_config(wcd, hph_mode, event);
  break;
 case 131:



  usleep_range(5000, 5500);
  break;
 };

 return 0;
}
