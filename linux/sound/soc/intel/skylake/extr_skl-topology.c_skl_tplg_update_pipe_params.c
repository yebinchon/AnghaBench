
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u8 ;
struct skl_pipe_params {scalar_t__ stream; int s_freq; int ch; int s_fmt; } ;
struct skl_module_res {int ibs; int obs; } ;
struct skl_module_fmt {int s_freq; int channels; int valid_bit_depth; int bit_depth; } ;
struct skl_module_cfg {TYPE_6__* module; TYPE_2__* mod_cfg; int res_idx; int fmt_idx; TYPE_1__* pipe; } ;
struct skl_dev {scalar_t__ nr_modules; } ;
struct device {int dummy; } ;
struct TYPE_12__ {TYPE_5__* formats; struct skl_module_res* resources; } ;
struct TYPE_11__ {TYPE_4__* outputs; TYPE_3__* inputs; } ;
struct TYPE_10__ {struct skl_module_fmt fmt; } ;
struct TYPE_9__ {struct skl_module_fmt fmt; } ;
struct TYPE_8__ {int res_idx; int fmt_idx; } ;
struct TYPE_7__ {size_t cur_config_idx; } ;


 int EINVAL ;



 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (struct device*,char*,int) ;
 struct skl_dev* get_skl_ctx (struct device*) ;
 int skl_get_bit_depth (int ) ;
 int skl_tplg_fill_dma_id (struct skl_module_cfg*,struct skl_pipe_params*) ;

int skl_tplg_update_pipe_params(struct device *dev,
   struct skl_module_cfg *mconfig,
   struct skl_pipe_params *params)
{
 struct skl_module_res *res = &mconfig->module->resources[0];
 struct skl_dev *skl = get_skl_ctx(dev);
 struct skl_module_fmt *format = ((void*)0);
 u8 cfg_idx = mconfig->pipe->cur_config_idx;

 skl_tplg_fill_dma_id(mconfig, params);
 mconfig->fmt_idx = mconfig->mod_cfg[cfg_idx].fmt_idx;
 mconfig->res_idx = mconfig->mod_cfg[cfg_idx].res_idx;

 if (skl->nr_modules)
  return 0;

 if (params->stream == SNDRV_PCM_STREAM_PLAYBACK)
  format = &mconfig->module->formats[0].inputs[0].fmt;
 else
  format = &mconfig->module->formats[0].outputs[0].fmt;


 format->s_freq = params->s_freq;
 format->channels = params->ch;
 format->valid_bit_depth = skl_get_bit_depth(params->s_fmt);





 switch (format->valid_bit_depth) {
 case 130:
  format->bit_depth = format->valid_bit_depth;
  break;

 case 129:
 case 128:
  format->bit_depth = 128;
  break;

 default:
  dev_err(dev, "Invalid bit depth %x for pipe\n",
    format->valid_bit_depth);
  return -EINVAL;
 }

 if (params->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  res->ibs = (format->s_freq / 1000) *
    (format->channels) *
    (format->bit_depth >> 3);
 } else {
  res->obs = (format->s_freq / 1000) *
    (format->channels) *
    (format->bit_depth >> 3);
 }

 return 0;
}
