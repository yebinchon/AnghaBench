
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int time_slot_index; int i2s_instance; } ;
union skl_ssp_dma_node {int val; TYPE_2__ dma_node; int member_0; } ;
struct TYPE_6__ {int vindex; void* dma_type; } ;
union skl_connector_node_id {int val; TYPE_3__ node; int member_0; } ;
typedef int u32 ;
struct skl_pipe_params {int host_dma_id; int link_dma_id; } ;
struct skl_module_cfg {int dev_type; int vbus_id; int time_slot; int hw_conn_type; TYPE_1__* pipe; } ;
struct skl_dev {int dummy; } ;
struct TYPE_4__ {struct skl_pipe_params* p_params; } ;


 int SKL_CONN_SOURCE ;





 void* SKL_DMA_DMIC_LINK_INPUT_CLASS ;
 void* SKL_DMA_HDA_HOST_INPUT_CLASS ;
 void* SKL_DMA_HDA_HOST_OUTPUT_CLASS ;
 void* SKL_DMA_HDA_LINK_INPUT_CLASS ;
 void* SKL_DMA_HDA_LINK_OUTPUT_CLASS ;
 void* SKL_DMA_I2S_LINK_INPUT_CLASS ;
 void* SKL_DMA_I2S_LINK_OUTPUT_CLASS ;

__attribute__((used)) static u32 skl_get_node_id(struct skl_dev *skl,
   struct skl_module_cfg *mconfig)
{
 union skl_connector_node_id node_id = {0};
 union skl_ssp_dma_node ssp_node = {0};
 struct skl_pipe_params *params = mconfig->pipe->p_params;

 switch (mconfig->dev_type) {
 case 132:
  node_id.node.dma_type =
   (SKL_CONN_SOURCE == mconfig->hw_conn_type) ?
   SKL_DMA_I2S_LINK_OUTPUT_CLASS :
   SKL_DMA_I2S_LINK_INPUT_CLASS;
  node_id.node.vindex = params->host_dma_id +
     (mconfig->vbus_id << 3);
  break;

 case 128:
  node_id.node.dma_type =
   (SKL_CONN_SOURCE == mconfig->hw_conn_type) ?
   SKL_DMA_I2S_LINK_OUTPUT_CLASS :
   SKL_DMA_I2S_LINK_INPUT_CLASS;
  ssp_node.dma_node.time_slot_index = mconfig->time_slot;
  ssp_node.dma_node.i2s_instance = mconfig->vbus_id;
  node_id.node.vindex = ssp_node.val;
  break;

 case 131:
  node_id.node.dma_type = SKL_DMA_DMIC_LINK_INPUT_CLASS;
  node_id.node.vindex = mconfig->vbus_id +
      (mconfig->time_slot);
  break;

 case 129:
  node_id.node.dma_type =
   (SKL_CONN_SOURCE == mconfig->hw_conn_type) ?
   SKL_DMA_HDA_LINK_OUTPUT_CLASS :
   SKL_DMA_HDA_LINK_INPUT_CLASS;
  node_id.node.vindex = params->link_dma_id;
  break;

 case 130:
  node_id.node.dma_type =
   (SKL_CONN_SOURCE == mconfig->hw_conn_type) ?
   SKL_DMA_HDA_HOST_OUTPUT_CLASS :
   SKL_DMA_HDA_HOST_INPUT_CLASS;
  node_id.node.vindex = params->host_dma_id;
  break;

 default:
  node_id.val = 0xFFFFFFFF;
  break;
 }

 return node_id.val;
}
