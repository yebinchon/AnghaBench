
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skl_module_cfg {scalar_t__ m_type; } ;
struct skl_mod_inst_map {int inst_id; int mod_id; } ;
struct TYPE_2__ {struct skl_mod_inst_map* map; } ;
struct skl_kpb_params {int num_modules; TYPE_1__ u; } ;
struct skl_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ SKL_MODULE_TYPE_KPB ;
 int skl_get_pvt_instance_id_map (struct skl_dev*,int ,int) ;

__attribute__((used)) static int skl_fill_sink_instance_id(struct skl_dev *skl, u32 *params,
    int size, struct skl_module_cfg *mcfg)
{
 int i, pvt_id;

 if (mcfg->m_type == SKL_MODULE_TYPE_KPB) {
  struct skl_kpb_params *kpb_params =
    (struct skl_kpb_params *)params;
  struct skl_mod_inst_map *inst = kpb_params->u.map;

  for (i = 0; i < kpb_params->num_modules; i++) {
   pvt_id = skl_get_pvt_instance_id_map(skl, inst->mod_id,
        inst->inst_id);
   if (pvt_id < 0)
    return -EINVAL;

   inst->inst_id = pvt_id;
   inst++;
  }
 }

 return 0;
}
