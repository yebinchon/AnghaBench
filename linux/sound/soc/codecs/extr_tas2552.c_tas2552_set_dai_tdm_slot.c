
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas2552_data {unsigned int tdm_delay; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int TAS2552_DOUT ;
 int TAS2552_SDOUT_TRISTATE ;
 unsigned int __ffs (unsigned int) ;
 unsigned int __fls (unsigned int) ;
 int dev_err (int ,char*) ;
 struct tas2552_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tas2552_set_dai_tdm_slot(struct snd_soc_dai *dai,
        unsigned int tx_mask, unsigned int rx_mask,
        int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct tas2552_data *tas2552 = snd_soc_component_get_drvdata(component);
 unsigned int lsb;

 if (unlikely(!tx_mask)) {
  dev_err(component->dev, "tx masks need to be non 0\n");
  return -EINVAL;
 }


 lsb = __ffs(tx_mask);
 if ((lsb + 1) != __fls(tx_mask)) {
  dev_err(component->dev, "Invalid mask, slots must be adjacent\n");
  return -EINVAL;
 }

 tas2552->tdm_delay = lsb * slot_width;


 snd_soc_component_update_bits(component, TAS2552_DOUT,
       TAS2552_SDOUT_TRISTATE, TAS2552_SDOUT_TRISTATE);

 return 0;
}
