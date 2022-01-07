
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int rx_bias_count; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;




 int WCD9335_ANA_RX_BIAS_DISABLE ;
 int WCD9335_ANA_RX_BIAS_ENABLE ;
 int WCD9335_ANA_RX_BIAS_ENABLE_MASK ;
 int WCD9335_ANA_RX_SUPPLIES ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wcd9335_codec_init_flyback (struct snd_soc_component*) ;

__attribute__((used)) static int wcd9335_codec_enable_rx_bias(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kc, int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);
 struct wcd9335_codec *wcd = dev_get_drvdata(comp->dev);

 switch (event) {
 case 128:
  wcd->rx_bias_count++;
  if (wcd->rx_bias_count == 1) {
   wcd9335_codec_init_flyback(comp);
   snd_soc_component_update_bits(comp,
      WCD9335_ANA_RX_SUPPLIES,
      WCD9335_ANA_RX_BIAS_ENABLE_MASK,
      WCD9335_ANA_RX_BIAS_ENABLE);
  }
  break;
 case 129:
  wcd->rx_bias_count--;
  if (!wcd->rx_bias_count)
   snd_soc_component_update_bits(comp,
     WCD9335_ANA_RX_SUPPLIES,
     WCD9335_ANA_RX_BIAS_ENABLE_MASK,
     WCD9335_ANA_RX_BIAS_DISABLE);
  break;
 };

 return 0;
}
