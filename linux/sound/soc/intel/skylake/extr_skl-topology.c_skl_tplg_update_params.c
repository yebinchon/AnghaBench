
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_pipe_params {int s_fmt; int ch; int s_freq; } ;
struct skl_module_fmt {int valid_bit_depth; int bit_depth; int channels; int s_freq; } ;


 int SKL_CH_FIXUP_MASK ;

 int SKL_DEPTH_32BIT ;
 int SKL_FMT_FIXUP_MASK ;
 int SKL_RATE_FIXUP_MASK ;
 int skl_get_bit_depth (int ) ;
 int skl_tplg_update_chmap (struct skl_module_fmt*,int ) ;

__attribute__((used)) static void skl_tplg_update_params(struct skl_module_fmt *fmt,
   struct skl_pipe_params *params, int fixup)
{
 if (fixup & SKL_RATE_FIXUP_MASK)
  fmt->s_freq = params->s_freq;
 if (fixup & SKL_CH_FIXUP_MASK) {
  fmt->channels = params->ch;
  skl_tplg_update_chmap(fmt, fmt->channels);
 }
 if (fixup & SKL_FMT_FIXUP_MASK) {
  fmt->valid_bit_depth = skl_get_bit_depth(params->s_fmt);





  switch (fmt->valid_bit_depth) {
  case 128:
   fmt->bit_depth = fmt->valid_bit_depth;
   break;

  default:
   fmt->bit_depth = SKL_DEPTH_32BIT;
   break;
  }
 }

}
