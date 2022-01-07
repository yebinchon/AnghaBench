
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skl_ipc_large_config_msg {scalar_t__ param_data_size; int large_param_id; int member_0; } ;
struct skl_dma_control {int config_data; int config_length; int node_id; } ;
struct skl_dev {int ipc; } ;


 int DMA_CONTROL_ID ;
 int DMA_I2S_BLOB_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct skl_dma_control*) ;
 struct skl_dma_control* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,int *,int ) ;
 int skl_ipc_set_large_config (int *,struct skl_ipc_large_config_msg*,int *) ;

int skl_dsp_set_dma_control(struct skl_dev *skl, u32 *caps,
    u32 caps_size, u32 node_id)
{
 struct skl_dma_control *dma_ctrl;
 struct skl_ipc_large_config_msg msg = {0};
 int err = 0;





 if (caps_size == 0)
  return 0;

 msg.large_param_id = DMA_CONTROL_ID;
 msg.param_data_size = sizeof(struct skl_dma_control) + caps_size;

 dma_ctrl = kzalloc(msg.param_data_size, GFP_KERNEL);
 if (dma_ctrl == ((void*)0))
  return -ENOMEM;

 dma_ctrl->node_id = node_id;







 dma_ctrl->config_length = DMA_I2S_BLOB_SIZE;

 memcpy(dma_ctrl->config_data, caps, caps_size);

 err = skl_ipc_set_large_config(&skl->ipc, &msg, (u32 *)dma_ctrl);

 kfree(dma_ctrl);
 return err;
}
