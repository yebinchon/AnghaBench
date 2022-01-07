
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_module_cfg {int dummy; } ;
struct skl_dev {int dummy; } ;
struct skl_audio_data_format {int dummy; } ;
struct skl_base_outfmt_cfg {struct skl_audio_data_format out_fmt; } ;
struct skl_base_cfg {int dummy; } ;


 int skl_set_base_module_format (struct skl_dev*,struct skl_module_cfg*,struct skl_base_cfg*) ;
 int skl_setup_out_format (struct skl_dev*,struct skl_module_cfg*,struct skl_audio_data_format*) ;

__attribute__((used)) static void skl_set_base_outfmt_format(struct skl_dev *skl,
   struct skl_module_cfg *mconfig,
   struct skl_base_outfmt_cfg *base_outfmt_mcfg)
{
 struct skl_audio_data_format *out_fmt = &base_outfmt_mcfg->out_fmt;
 struct skl_base_cfg *base_cfg =
    (struct skl_base_cfg *)base_outfmt_mcfg;

 skl_set_base_module_format(skl, mconfig, base_cfg);
 skl_setup_out_format(skl, mconfig, out_fmt);
}
