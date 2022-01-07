
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct axg_tdm_stream {int physical_width; TYPE_1__* iface; scalar_t__ width; } ;
struct axg_tdm_formatter_hw {unsigned int skew_offset; } ;
struct TYPE_2__ {int fmt; scalar_t__ slots; scalar_t__ slot_width; } ;


 int EINVAL ;


 int SND_SOC_DAIFMT_FORMAT_MASK ;


 int TDMOUT_CTRL0 ;
 unsigned int TDMOUT_CTRL0_BITNUM (scalar_t__) ;
 unsigned int TDMOUT_CTRL0_BITNUM_MASK ;
 unsigned int TDMOUT_CTRL0_INIT_BITNUM (unsigned int) ;
 unsigned int TDMOUT_CTRL0_INIT_BITNUM_MASK ;
 unsigned int TDMOUT_CTRL0_SLOTNUM (scalar_t__) ;
 unsigned int TDMOUT_CTRL0_SLOTNUM_MASK ;
 int TDMOUT_CTRL1 ;
 unsigned int TDMOUT_CTRL1_MSB_POS (scalar_t__) ;
 unsigned int TDMOUT_CTRL1_MSB_POS_MASK ;
 unsigned int TDMOUT_CTRL1_TYPE (int) ;
 unsigned int TDMOUT_CTRL1_TYPE_MASK ;
 unsigned int TDMOUT_CTRL1_WS_INV ;
 int TDMOUT_MASK0 ;
 int TDMOUT_SWAP ;
 int axg_tdm_formatter_set_channel_masks (struct regmap*,struct axg_tdm_stream*,int ) ;
 scalar_t__ axg_tdm_lrclk_invert (int) ;
 int pr_err (char*,int) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,unsigned int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int axg_tdmout_prepare(struct regmap *map,
         const struct axg_tdm_formatter_hw *quirks,
         struct axg_tdm_stream *ts)
{
 unsigned int val, skew = quirks->skew_offset;


 switch (ts->iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
 case 131:
  break;

 case 128:
 case 130:
  skew += 1;
  break;

 default:
  pr_err("Unsupported format: %u\n",
         ts->iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK);
  return -EINVAL;
 }

 val = TDMOUT_CTRL0_INIT_BITNUM(skew);


 val |= TDMOUT_CTRL0_BITNUM(ts->iface->slot_width - 1);


 val |= TDMOUT_CTRL0_SLOTNUM(ts->iface->slots - 1);

 regmap_update_bits(map, TDMOUT_CTRL0,
      TDMOUT_CTRL0_INIT_BITNUM_MASK |
      TDMOUT_CTRL0_BITNUM_MASK |
      TDMOUT_CTRL0_SLOTNUM_MASK, val);


 val = TDMOUT_CTRL1_MSB_POS(ts->width - 1);


 switch (ts->physical_width) {
 case 8:

  val |= TDMOUT_CTRL1_TYPE(0);
  break;
 case 16:

  val |= TDMOUT_CTRL1_TYPE(2);
  break;
 case 32:

  val |= TDMOUT_CTRL1_TYPE(4);
  break;
 default:
  pr_err("Unsupported physical width: %u\n",
         ts->physical_width);
  return -EINVAL;
 }


 if (axg_tdm_lrclk_invert(ts->iface->fmt))
  val |= TDMOUT_CTRL1_WS_INV;

 regmap_update_bits(map, TDMOUT_CTRL1,
      (TDMOUT_CTRL1_TYPE_MASK | TDMOUT_CTRL1_MSB_POS_MASK |
       TDMOUT_CTRL1_WS_INV), val);


 regmap_write(map, TDMOUT_SWAP, 0x76543210);

 return axg_tdm_formatter_set_channel_masks(map, ts, TDMOUT_MASK0);
}
