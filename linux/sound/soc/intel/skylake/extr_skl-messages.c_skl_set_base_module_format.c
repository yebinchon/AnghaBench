
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_module_res {int is_pages; int obs; int ibs; int cpc; } ;
struct skl_module_iface {TYPE_1__* inputs; } ;
struct skl_module_fmt {int interleaving_style; int ch_map; int ch_cfg; int valid_bit_depth; int bit_depth; int sample_type; int s_freq; int channels; } ;
struct skl_module_cfg {size_t res_idx; size_t fmt_idx; struct skl_module* module; } ;
struct skl_module {struct skl_module_iface* formats; struct skl_module_res* resources; } ;
struct skl_dev {int dev; } ;
struct TYPE_4__ {int interleaving; int channel_map; int sample_type; int ch_cfg; int valid_bit_depth; int bit_depth; int s_freq; int number_of_channels; } ;
struct skl_base_cfg {int is_pages; int obs; int ibs; int cpc; TYPE_2__ audio_fmt; } ;
struct TYPE_3__ {struct skl_module_fmt fmt; } ;


 int dev_dbg (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void skl_set_base_module_format(struct skl_dev *skl,
   struct skl_module_cfg *mconfig,
   struct skl_base_cfg *base_cfg)
{
 struct skl_module *module = mconfig->module;
 struct skl_module_res *res = &module->resources[mconfig->res_idx];
 struct skl_module_iface *fmt = &module->formats[mconfig->fmt_idx];
 struct skl_module_fmt *format = &fmt->inputs[0].fmt;

 base_cfg->audio_fmt.number_of_channels = format->channels;

 base_cfg->audio_fmt.s_freq = format->s_freq;
 base_cfg->audio_fmt.bit_depth = format->bit_depth;
 base_cfg->audio_fmt.valid_bit_depth = format->valid_bit_depth;
 base_cfg->audio_fmt.ch_cfg = format->ch_cfg;
 base_cfg->audio_fmt.sample_type = format->sample_type;

 dev_dbg(skl->dev, "bit_depth=%x valid_bd=%x ch_config=%x\n",
   format->bit_depth, format->valid_bit_depth,
   format->ch_cfg);

 base_cfg->audio_fmt.channel_map = format->ch_map;

 base_cfg->audio_fmt.interleaving = format->interleaving_style;

 base_cfg->cpc = res->cpc;
 base_cfg->ibs = res->ibs;
 base_cfg->obs = res->obs;
 base_cfg->is_pages = res->is_pages;
}
