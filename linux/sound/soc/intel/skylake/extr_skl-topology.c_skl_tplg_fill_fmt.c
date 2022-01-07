
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skl_module_fmt {int channels; int s_freq; int bit_depth; int valid_bit_depth; int ch_cfg; int interleaving_style; int sample_type; int ch_map; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int skl_tplg_fill_fmt(struct device *dev,
  struct skl_module_fmt *dst_fmt,
  u32 tkn, u32 value)
{
 switch (tkn) {
 case 134:
  dst_fmt->channels = value;
  break;

 case 131:
  dst_fmt->s_freq = value;
  break;

 case 135:
  dst_fmt->bit_depth = value;
  break;

 case 129:
  dst_fmt->valid_bit_depth = value;
  break;

 case 133:
  dst_fmt->ch_cfg = value;
  break;

 case 130:
  dst_fmt->interleaving_style = value;
  break;

 case 128:
  dst_fmt->sample_type = value;
  break;

 case 132:
  dst_fmt->ch_map = value;
  break;

 default:
  dev_err(dev, "Invalid token %d\n", tkn);
  return -EINVAL;
 }

 return 0;
}
