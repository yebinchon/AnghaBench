
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct device_node {int dummy; } ;


 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 int snd_soc_of_get_slot_mask (struct device_node*,char*,unsigned int*) ;

int snd_soc_of_parse_tdm_slot(struct device_node *np,
         unsigned int *tx_mask,
         unsigned int *rx_mask,
         unsigned int *slots,
         unsigned int *slot_width)
{
 u32 val;
 int ret;

 if (tx_mask)
  snd_soc_of_get_slot_mask(np, "dai-tdm-slot-tx-mask", tx_mask);
 if (rx_mask)
  snd_soc_of_get_slot_mask(np, "dai-tdm-slot-rx-mask", rx_mask);

 if (of_property_read_bool(np, "dai-tdm-slot-num")) {
  ret = of_property_read_u32(np, "dai-tdm-slot-num", &val);
  if (ret)
   return ret;

  if (slots)
   *slots = val;
 }

 if (of_property_read_bool(np, "dai-tdm-slot-width")) {
  ret = of_property_read_u32(np, "dai-tdm-slot-width", &val);
  if (ret)
   return ret;

  if (slot_width)
   *slot_width = val;
 }

 return 0;
}
