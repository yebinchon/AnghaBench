
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sst_ipc_message {int header; scalar_t__ size; struct sst_hsw_transfer_parameter* data; int member_0; } ;
struct sst_hsw_transfer_parameter {scalar_t__ data_size; scalar_t__ parameter_id; int data; } ;
struct sst_hsw_transfer_list {int dummy; } ;
struct sst_hsw {int ipc; struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IPC_GLB_MODULE_OPERATION ;
 int IPC_GLB_TYPE (int ) ;
 int IPC_MODULE_ID (scalar_t__) ;
 int IPC_MODULE_OPERATION (int ) ;
 int IPC_MODULE_SET_PARAMETER ;
 scalar_t__ SST_HSW_IPC_MAX_SHORT_PARAMETER_SIZE ;
 int dev_dbg (struct device*,char*,scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;
 int kfree (struct sst_hsw_transfer_parameter*) ;
 struct sst_hsw_transfer_parameter* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,char*,scalar_t__) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,int *) ;

int sst_hsw_module_set_param(struct sst_hsw *hsw,
 u32 module_id, u32 instance_id, u32 parameter_id,
 u32 param_size, char *param)
{
 int ret;
 struct sst_ipc_message request = {0};
 u32 payload_size = 0;
 struct sst_hsw_transfer_parameter *parameter;
 struct device *dev = hsw->dev;

 request.header = IPC_GLB_TYPE(IPC_GLB_MODULE_OPERATION) |
   IPC_MODULE_OPERATION(IPC_MODULE_SET_PARAMETER) |
   IPC_MODULE_ID(module_id);
 dev_dbg(dev, "sst_hsw_module_set_param header=%x\n",
   (u32)request.header);

 payload_size = param_size +
  sizeof(struct sst_hsw_transfer_parameter) -
  sizeof(struct sst_hsw_transfer_list);
 dev_dbg(dev, "parameter size : %d\n", param_size);
 dev_dbg(dev, "payload size   : %d\n", payload_size);

 if (payload_size <= SST_HSW_IPC_MAX_SHORT_PARAMETER_SIZE) {

  dev_dbg(dev, "transfer parameter size : %zu\n",
   request.size);

  request.size = ALIGN(payload_size, 4);
  dev_dbg(dev, "transfer parameter aligned size : %zu\n",
   request.size);

  parameter = kzalloc(request.size, GFP_KERNEL);
  if (parameter == ((void*)0))
   return -ENOMEM;

  memcpy(parameter->data, param, param_size);
 } else {
  dev_warn(dev, "transfer parameter size too large!");
  return 0;
 }

 parameter->parameter_id = parameter_id;
 parameter->data_size = param_size;
 request.data = parameter;

 ret = sst_ipc_tx_message_wait(&hsw->ipc, request, ((void*)0));
 if (ret < 0)
  dev_err(dev, "ipc: module set parameter failed - %d\n", ret);

 kfree(parameter);

 return ret;
}
