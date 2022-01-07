
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct skl_pipe_params {scalar_t__ stream; } ;
struct skl_module_fmt {int dummy; } ;
struct skl_module_cfg {int params_fixup; int converter; TYPE_4__* module; } ;
struct TYPE_8__ {TYPE_3__* formats; } ;
struct TYPE_7__ {TYPE_2__* outputs; TYPE_1__* inputs; } ;
struct TYPE_6__ {struct skl_module_fmt fmt; } ;
struct TYPE_5__ {struct skl_module_fmt fmt; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int skl_tplg_update_params (struct skl_module_fmt*,struct skl_pipe_params*,int) ;

__attribute__((used)) static void skl_tplg_update_params_fixup(struct skl_module_cfg *m_cfg,
  struct skl_pipe_params *params, bool is_fe)
{
 int in_fixup, out_fixup;
 struct skl_module_fmt *in_fmt, *out_fmt;


 in_fmt = &m_cfg->module->formats[0].inputs[0].fmt;
 out_fmt = &m_cfg->module->formats[0].outputs[0].fmt;

 if (params->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (is_fe) {
   in_fixup = m_cfg->params_fixup;
   out_fixup = (~m_cfg->converter) &
     m_cfg->params_fixup;
  } else {
   out_fixup = m_cfg->params_fixup;
   in_fixup = (~m_cfg->converter) &
     m_cfg->params_fixup;
  }
 } else {
  if (is_fe) {
   out_fixup = m_cfg->params_fixup;
   in_fixup = (~m_cfg->converter) &
     m_cfg->params_fixup;
  } else {
   in_fixup = m_cfg->params_fixup;
   out_fixup = (~m_cfg->converter) &
     m_cfg->params_fixup;
  }
 }

 skl_tplg_update_params(in_fmt, params, in_fixup);
 skl_tplg_update_params(out_fmt, params, out_fixup);
}
