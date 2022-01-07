
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int module_id; } ;
struct skl_module_cfg {int m_type; TYPE_1__ id; } ;
struct skl_dev {int dev; } ;


 int DUMP_PREFIX_OFFSET ;
 int ENOMEM ;
 int GFP_KERNEL ;







 int dev_dbg (int ,char*,int,int ,int ) ;
 void* kzalloc (int ,int ) ;
 int print_hex_dump_debug (char*,int ,int,int,void*,int ,int) ;
 int skl_get_module_param_size (struct skl_dev*,struct skl_module_cfg*) ;
 int skl_set_algo_format (struct skl_dev*,struct skl_module_cfg*,void*) ;
 int skl_set_base_module_format (struct skl_dev*,struct skl_module_cfg*,void*) ;
 int skl_set_base_outfmt_format (struct skl_dev*,struct skl_module_cfg*,void*) ;
 int skl_set_copier_format (struct skl_dev*,struct skl_module_cfg*,void*) ;
 int skl_set_src_format (struct skl_dev*,struct skl_module_cfg*,void*) ;
 int skl_set_updown_mixer_format (struct skl_dev*,struct skl_module_cfg*,void*) ;

__attribute__((used)) static int skl_set_module_format(struct skl_dev *skl,
   struct skl_module_cfg *module_config,
   u16 *module_config_size,
   void **param_data)
{
 u16 param_size;

 param_size = skl_get_module_param_size(skl, module_config);

 *param_data = kzalloc(param_size, GFP_KERNEL);
 if (((void*)0) == *param_data)
  return -ENOMEM;

 *module_config_size = param_size;

 switch (module_config->m_type) {
 case 132:
  skl_set_copier_format(skl, module_config, *param_data);
  break;

 case 129:
  skl_set_src_format(skl, module_config, *param_data);
  break;

 case 128:
  skl_set_updown_mixer_format(skl, module_config, *param_data);
  break;

 case 134:
  skl_set_algo_format(skl, module_config, *param_data);
  break;

 case 133:
 case 130:
 case 131:
  skl_set_base_outfmt_format(skl, module_config, *param_data);
  break;

 default:
  skl_set_base_module_format(skl, module_config, *param_data);
  break;

 }

 dev_dbg(skl->dev, "Module type=%d id=%d config size: %d bytes\n",
   module_config->m_type, module_config->id.module_id,
   param_size);
 print_hex_dump_debug("Module params:", DUMP_PREFIX_OFFSET, 8, 4,
   *param_data, param_size, 0);
 return 0;
}
