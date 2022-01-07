
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct rt5677_priv {int regmap; } ;




 int RT5677_DIG_MISC ;
 int RT5677_TDM1_CTRL1 ;
 int RT5677_TDM2_CTRL1 ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5677_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
   unsigned int rx_mask, int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 unsigned int val = 0, slot_width_25 = 0;

 if (rx_mask || tx_mask)
  val |= (1 << 12);

 switch (slots) {
 case 4:
  val |= (1 << 10);
  break;
 case 6:
  val |= (2 << 10);
  break;
 case 8:
  val |= (3 << 10);
  break;
 case 2:
 default:
  break;
 }

 switch (slot_width) {
 case 20:
  val |= (1 << 8);
  break;
 case 25:
  slot_width_25 = 0x8080;

 case 24:
  val |= (2 << 8);
  break;
 case 32:
  val |= (3 << 8);
  break;
 case 16:
 default:
  break;
 }

 switch (dai->id) {
 case 129:
  regmap_update_bits(rt5677->regmap, RT5677_TDM1_CTRL1, 0x1f00,
   val);
  regmap_update_bits(rt5677->regmap, RT5677_DIG_MISC, 0x8000,
   slot_width_25);
  break;
 case 128:
  regmap_update_bits(rt5677->regmap, RT5677_TDM2_CTRL1, 0x1f00,
   val);
  regmap_update_bits(rt5677->regmap, RT5677_DIG_MISC, 0x80,
   slot_width_25);
  break;
 default:
  break;
 }

 return 0;
}
