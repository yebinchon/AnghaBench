
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct skl_up_down_mixer_cfg {int dummy; } ;
struct skl_src_module_cfg {int dummy; } ;
struct TYPE_2__ {int caps_size; } ;
struct skl_module_cfg {int m_type; TYPE_1__ formats_config; } ;
struct skl_dev {int dummy; } ;
struct skl_cpr_cfg {int dummy; } ;
struct skl_base_outfmt_cfg {int dummy; } ;
struct skl_base_cfg {int dummy; } ;
__attribute__((used)) static u16 skl_get_module_param_size(struct skl_dev *skl,
   struct skl_module_cfg *mconfig)
{
 u16 param_size;

 switch (mconfig->m_type) {
 case 132:
  param_size = sizeof(struct skl_cpr_cfg);
  param_size += mconfig->formats_config.caps_size;
  return param_size;

 case 129:
  return sizeof(struct skl_src_module_cfg);

 case 128:
  return sizeof(struct skl_up_down_mixer_cfg);

 case 134:
  param_size = sizeof(struct skl_base_cfg);
  param_size += mconfig->formats_config.caps_size;
  return param_size;

 case 133:
 case 130:
 case 131:
  return sizeof(struct skl_base_outfmt_cfg);

 default:




  return sizeof(struct skl_base_cfg);
 }

 return 0;
}
