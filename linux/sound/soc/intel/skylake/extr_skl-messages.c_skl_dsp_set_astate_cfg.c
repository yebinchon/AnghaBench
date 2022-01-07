
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skl_ipc_large_config_msg {int param_data_size; int large_param_id; int member_0; } ;
struct skl_dev {int ipc; } ;
struct skl_astate_param {int dummy; } ;
typedef int cnt ;


 int SKL_ASTATE_PARAM_ID ;
 int skl_ipc_set_large_config (int *,struct skl_ipc_large_config_msg*,void*) ;

void skl_dsp_set_astate_cfg(struct skl_dev *skl, u32 cnt, void *data)
{
 struct skl_ipc_large_config_msg msg = {0};

 msg.large_param_id = SKL_ASTATE_PARAM_ID;
 msg.param_data_size = (cnt * sizeof(struct skl_astate_param) +
    sizeof(cnt));

 skl_ipc_set_large_config(&skl->ipc, &msg, data);
}
