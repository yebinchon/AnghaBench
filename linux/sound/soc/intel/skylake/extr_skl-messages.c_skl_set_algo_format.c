
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ caps_size; int caps; } ;
struct skl_module_cfg {TYPE_1__ formats_config; } ;
struct skl_dev {int dummy; } ;
struct skl_base_cfg {int dummy; } ;
struct skl_algo_cfg {int params; } ;


 int memcpy (int ,int ,scalar_t__) ;
 int skl_set_base_module_format (struct skl_dev*,struct skl_module_cfg*,struct skl_base_cfg*) ;

__attribute__((used)) static void skl_set_algo_format(struct skl_dev *skl,
   struct skl_module_cfg *mconfig,
   struct skl_algo_cfg *algo_mcfg)
{
 struct skl_base_cfg *base_cfg = (struct skl_base_cfg *)algo_mcfg;

 skl_set_base_module_format(skl, mconfig, base_cfg);

 if (mconfig->formats_config.caps_size == 0)
  return;

 memcpy(algo_mcfg->params,
   mconfig->formats_config.caps,
   mconfig->formats_config.caps_size);

}
