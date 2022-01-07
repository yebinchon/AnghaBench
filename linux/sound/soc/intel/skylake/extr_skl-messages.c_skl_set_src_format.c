
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_src_module_cfg {int src_cfg; } ;
struct skl_module_iface {TYPE_1__* outputs; } ;
struct skl_module_fmt {int s_freq; } ;
struct skl_module_cfg {size_t fmt_idx; struct skl_module* module; } ;
struct skl_module {struct skl_module_iface* formats; } ;
struct skl_dev {int dummy; } ;
struct skl_base_cfg {int dummy; } ;
struct TYPE_2__ {struct skl_module_fmt fmt; } ;


 int skl_set_base_module_format (struct skl_dev*,struct skl_module_cfg*,struct skl_base_cfg*) ;

__attribute__((used)) static void skl_set_src_format(struct skl_dev *skl,
   struct skl_module_cfg *mconfig,
   struct skl_src_module_cfg *src_mconfig)
{
 struct skl_module *module = mconfig->module;
 struct skl_module_iface *iface = &module->formats[mconfig->fmt_idx];
 struct skl_module_fmt *fmt = &iface->outputs[0].fmt;

 skl_set_base_module_format(skl, mconfig,
  (struct skl_base_cfg *)src_mconfig);

 src_mconfig->src_cfg = fmt->s_freq;
}
