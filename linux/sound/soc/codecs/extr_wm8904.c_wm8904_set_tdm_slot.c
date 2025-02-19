
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8904_priv {int tdm_width; int tdm_slots; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8904_AIFADC_TDM ;
 int WM8904_AIFADC_TDM_CHAN ;
 int WM8904_AIFDAC_TDM ;
 int WM8904_AIFDAC_TDM_CHAN ;
 int WM8904_AUDIO_INTERFACE_1 ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8904_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
          unsigned int rx_mask, int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);
 int aif1 = 0;


 if (slots == 0)
  goto out;





 aif1 |= WM8904_AIFADC_TDM | WM8904_AIFDAC_TDM;

 switch (rx_mask) {
 case 3:
  break;
 case 0xc:
  aif1 |= WM8904_AIFADC_TDM_CHAN;
  break;
 default:
  return -EINVAL;
 }


 switch (tx_mask) {
 case 3:
  break;
 case 0xc:
  aif1 |= WM8904_AIFDAC_TDM_CHAN;
  break;
 default:
  return -EINVAL;
 }

out:
 wm8904->tdm_width = slot_width;
 wm8904->tdm_slots = slots / 2;

 snd_soc_component_update_bits(component, WM8904_AUDIO_INTERFACE_1,
       WM8904_AIFADC_TDM | WM8904_AIFADC_TDM_CHAN |
       WM8904_AIFDAC_TDM | WM8904_AIFDAC_TDM_CHAN, aif1);

 return 0;
}
