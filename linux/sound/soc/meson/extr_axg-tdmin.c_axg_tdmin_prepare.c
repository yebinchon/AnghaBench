
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct axg_tdm_stream {TYPE_1__* iface; } ;
struct axg_tdm_formatter_hw {unsigned int skew_offset; } ;
struct TYPE_2__ {int fmt; scalar_t__ slot_width; } ;


 int EINVAL ;


 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int TDMIN_CTRL ;
 unsigned int TDMIN_CTRL_BITNUM (scalar_t__) ;
 unsigned int TDMIN_CTRL_BITNUM_MASK ;
 unsigned int TDMIN_CTRL_I2S_MODE ;
 unsigned int TDMIN_CTRL_IN_BIT_SKEW (unsigned int) ;
 unsigned int TDMIN_CTRL_IN_BIT_SKEW_MASK ;
 unsigned int TDMIN_CTRL_LSB_FIRST ;
 unsigned int TDMIN_CTRL_WS_INV ;
 int TDMIN_MASK0 ;
 int TDMIN_SWAP ;
 int axg_tdm_formatter_set_channel_masks (struct regmap*,struct axg_tdm_stream*,int ) ;
 scalar_t__ axg_tdm_lrclk_invert (int) ;
 int pr_err (char*,int) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,unsigned int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int axg_tdmin_prepare(struct regmap *map,
        const struct axg_tdm_formatter_hw *quirks,
        struct axg_tdm_stream *ts)
{
 unsigned int val, skew = quirks->skew_offset;


 switch (ts->iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
 case 132:
  skew += 1;
  break;

 case 129:
 case 131:
  break;

 default:
  pr_err("Unsupported format: %u\n",
         ts->iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK);
  return -EINVAL;
 }

 val = TDMIN_CTRL_IN_BIT_SKEW(skew);


 switch (ts->iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
 case 129:
 case 128:
  val |= TDMIN_CTRL_I2S_MODE;
  break;
 }


 if (axg_tdm_lrclk_invert(ts->iface->fmt))
  val |= TDMIN_CTRL_WS_INV;


 val |= TDMIN_CTRL_BITNUM(ts->iface->slot_width - 1);





 regmap_update_bits(map, TDMIN_CTRL,
      (TDMIN_CTRL_IN_BIT_SKEW_MASK | TDMIN_CTRL_WS_INV |
       TDMIN_CTRL_I2S_MODE | TDMIN_CTRL_LSB_FIRST |
       TDMIN_CTRL_BITNUM_MASK), val);


 regmap_write(map, TDMIN_SWAP, 0x76543210);

 return axg_tdm_formatter_set_channel_masks(map, ts, TDMIN_MASK0);
}
