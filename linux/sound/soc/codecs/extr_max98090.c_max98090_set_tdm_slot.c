
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct max98090_priv {int tdm_slots; int tdm_width; int dai_fmt; struct max98090_cdata* dai; } ;
struct max98090_cdata {scalar_t__ fmt; } ;


 int EINVAL ;
 int M98090_REG_TDM_CONTROL ;
 int M98090_REG_TDM_FORMAT ;
 int M98090_TDM_MASK ;
 int M98090_TDM_SLOTDLY_SHIFT ;
 int M98090_TDM_SLOTL_SHIFT ;
 int M98090_TDM_SLOTR_SHIFT ;
 int max98090_dai_set_fmt (struct snd_soc_dai*,int ) ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int max98090_set_tdm_slot(struct snd_soc_dai *codec_dai,
 unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width)
{
 struct snd_soc_component *component = codec_dai->component;
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);
 struct max98090_cdata *cdata;
 cdata = &max98090->dai[0];

 if (slots < 0 || slots > 4)
  return -EINVAL;

 max98090->tdm_slots = slots;
 max98090->tdm_width = slot_width;

 if (max98090->tdm_slots > 1) {

  snd_soc_component_write(component, M98090_REG_TDM_FORMAT,
   0 << M98090_TDM_SLOTL_SHIFT |
   1 << M98090_TDM_SLOTR_SHIFT |
   0 << M98090_TDM_SLOTDLY_SHIFT);


  snd_soc_component_update_bits(component, M98090_REG_TDM_CONTROL,
   M98090_TDM_MASK,
   M98090_TDM_MASK);
 }




 cdata->fmt = 0;
 max98090_dai_set_fmt(codec_dai, max98090->dai_fmt);

 return 0;
}
