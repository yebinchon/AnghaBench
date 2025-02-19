
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct skl_module_res {int ibs; int obs; } ;
struct skl_module_fmt {int channels; int bit_depth; int s_freq; } ;
struct skl_module_cfg {scalar_t__ m_type; TYPE_4__* module; } ;
struct skl_dev {int dummy; } ;
struct TYPE_8__ {TYPE_3__* formats; struct skl_module_res* resources; } ;
struct TYPE_7__ {TYPE_2__* outputs; TYPE_1__* inputs; } ;
struct TYPE_6__ {struct skl_module_fmt fmt; } ;
struct TYPE_5__ {struct skl_module_fmt fmt; } ;


 int DIV_ROUND_UP (int ,int) ;
 scalar_t__ SKL_MODULE_TYPE_SRCINT ;

__attribute__((used)) static void skl_tplg_update_buffer_size(struct skl_dev *skl,
    struct skl_module_cfg *mcfg)
{
 int multiplier = 1;
 struct skl_module_fmt *in_fmt, *out_fmt;
 struct skl_module_res *res;




 res = &mcfg->module->resources[0];
 in_fmt = &mcfg->module->formats[0].inputs[0].fmt;
 out_fmt = &mcfg->module->formats[0].outputs[0].fmt;

 if (mcfg->m_type == SKL_MODULE_TYPE_SRCINT)
  multiplier = 5;

 res->ibs = DIV_ROUND_UP(in_fmt->s_freq, 1000) *
   in_fmt->channels * (in_fmt->bit_depth >> 3) *
   multiplier;

 res->obs = DIV_ROUND_UP(out_fmt->s_freq, 1000) *
   out_fmt->channels * (out_fmt->bit_depth >> 3) *
   multiplier;
}
