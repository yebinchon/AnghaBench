
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ak4458_priv {int slots; int slot_width; } ;


 int AK4458_0A_CONTROL6 ;
 int AK4458_MODE_MASK ;
 int AK4458_MODE_NORMAL ;
 int AK4458_MODE_TDM128 ;
 int AK4458_MODE_TDM256 ;
 int AK4458_MODE_TDM512 ;
 struct ak4458_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int ak4458_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
          unsigned int rx_mask, int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct ak4458_priv *ak4458 = snd_soc_component_get_drvdata(component);
 int mode;

 ak4458->slots = slots;
 ak4458->slot_width = slot_width;

 switch (slots * slot_width) {
 case 128:
  mode = AK4458_MODE_TDM128;
  break;
 case 256:
  mode = AK4458_MODE_TDM256;
  break;
 case 512:
  mode = AK4458_MODE_TDM512;
  break;
 default:
  mode = AK4458_MODE_NORMAL;
  break;
 }

 snd_soc_component_update_bits(component, AK4458_0A_CONTROL6,
       AK4458_MODE_MASK,
       mode);

 return 0;
}
