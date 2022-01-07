
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int RT274_I2S_CTRL1 ;
 int RT274_TDM_2CH ;
 int RT274_TDM_4CH ;
 int RT274_TDM_CH_NUM ;
 int RT274_TDM_DIS ;
 int RT274_TDM_EN ;
 int dev_err (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int rt274_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
   unsigned int rx_mask, int slots, int slot_width)

{
 struct snd_soc_component *component = dai->component;

 if (rx_mask || tx_mask) {
  snd_soc_component_update_bits(component,
   RT274_I2S_CTRL1, RT274_TDM_EN, RT274_TDM_EN);
 } else {
  snd_soc_component_update_bits(component,
   RT274_I2S_CTRL1, RT274_TDM_EN, RT274_TDM_DIS);
  return 0;
 }

 switch (slots) {
 case 4:
  snd_soc_component_update_bits(component,
   RT274_I2S_CTRL1, RT274_TDM_CH_NUM, RT274_TDM_4CH);
  break;
 case 2:
  snd_soc_component_update_bits(component,
   RT274_I2S_CTRL1, RT274_TDM_CH_NUM, RT274_TDM_2CH);
  break;
 default:
  dev_err(component->dev,
   "Support 2 or 4 slots TDM only\n");
  return -EINVAL;
 }

 return 0;
}
