
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pvt_id; int module_id; } ;
struct skl_module_cfg {TYPE_1__ id; } ;
struct skl_ipc_large_config_msg {int param_data_size; int large_param_id; int instance_id; int module_id; } ;
struct skl_dev {int ipc; } ;


 int skl_ipc_get_large_config (int *,struct skl_ipc_large_config_msg*,int **,size_t*) ;

int skl_get_module_params(struct skl_dev *skl, u32 *params, int size,
     u32 param_id, struct skl_module_cfg *mcfg)
{
 struct skl_ipc_large_config_msg msg;
 size_t bytes = size;

 msg.module_id = mcfg->id.module_id;
 msg.instance_id = mcfg->id.pvt_id;
 msg.param_data_size = size;
 msg.large_param_id = param_id;

 return skl_ipc_get_large_config(&skl->ipc, &msg, &params, &bytes);
}
