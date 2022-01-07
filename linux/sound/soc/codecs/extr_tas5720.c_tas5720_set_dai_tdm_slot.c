
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5720_data {int devtype; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int TAS5720_DIGITAL_CTRL1_REG ;
 int TAS5720_DIGITAL_CTRL2_REG ;
 unsigned int TAS5720_TDM_CFG_SRC ;
 unsigned int TAS5720_TDM_SLOT_SEL_MASK ;

 int TAS5722_DIGITAL_CTRL2_REG ;
 unsigned int TAS5722_TDM_SLOT_16B ;
 unsigned int __ffs (unsigned int) ;
 int dev_err (int ,char*,...) ;
 struct tas5720_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int tas5720_set_dai_tdm_slot(struct snd_soc_dai *dai,
        unsigned int tx_mask, unsigned int rx_mask,
        int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct tas5720_data *tas5720 = snd_soc_component_get_drvdata(component);
 unsigned int first_slot;
 int ret;

 if (!tx_mask) {
  dev_err(component->dev, "tx masks must not be 0\n");
  return -EINVAL;
 }






 first_slot = __ffs(tx_mask);

 if (first_slot > 7) {
  dev_err(component->dev, "slot selection out of bounds (%u)\n",
   first_slot);
  return -EINVAL;
 }


 ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL1_REG,
      TAS5720_TDM_CFG_SRC, TAS5720_TDM_CFG_SRC);
 if (ret < 0)
  goto error_snd_soc_component_update_bits;


 ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_REG,
      TAS5720_TDM_SLOT_SEL_MASK, first_slot);
 if (ret < 0)
  goto error_snd_soc_component_update_bits;


 switch (tas5720->devtype) {
 case 128:
  ret = snd_soc_component_update_bits(component, TAS5722_DIGITAL_CTRL2_REG,
          TAS5722_TDM_SLOT_16B,
          slot_width == 16 ?
          TAS5722_TDM_SLOT_16B : 0);
  if (ret < 0)
   goto error_snd_soc_component_update_bits;
  break;
 default:
  break;
 }

 return 0;

error_snd_soc_component_update_bits:
 dev_err(component->dev, "error configuring TDM mode: %d\n", ret);
 return ret;
}
