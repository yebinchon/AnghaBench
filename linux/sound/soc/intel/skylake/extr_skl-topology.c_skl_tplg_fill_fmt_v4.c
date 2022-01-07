
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sample_type; int interleaving_style; int ch_map; int ch_cfg; int valid_bit_depth; int bit_depth; int s_freq; int channels; } ;
struct skl_module_pin_fmt {TYPE_1__ fmt; } ;
struct skl_dfw_v4_module_fmt {int sample_type; int interleaving_style; int ch_map; int ch_cfg; int valid_bit_depth; int bit_depth; int freq; int channels; } ;



__attribute__((used)) static void skl_tplg_fill_fmt_v4(struct skl_module_pin_fmt *dst_fmt,
     struct skl_dfw_v4_module_fmt *src_fmt,
     int pins)
{
 int i;

 for (i = 0; i < pins; i++) {
  dst_fmt[i].fmt.channels = src_fmt[i].channels;
  dst_fmt[i].fmt.s_freq = src_fmt[i].freq;
  dst_fmt[i].fmt.bit_depth = src_fmt[i].bit_depth;
  dst_fmt[i].fmt.valid_bit_depth = src_fmt[i].valid_bit_depth;
  dst_fmt[i].fmt.ch_cfg = src_fmt[i].ch_cfg;
  dst_fmt[i].fmt.ch_map = src_fmt[i].ch_map;
  dst_fmt[i].fmt.interleaving_style =
      src_fmt[i].interleaving_style;
  dst_fmt[i].fmt.sample_type = src_fmt[i].sample_type;
 }
}
