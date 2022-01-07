
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int drv_id; int msg_id; scalar_t__ result; scalar_t__ large; } ;
union ipc_header_high {TYPE_3__ part; int full; } ;
typedef int u32 ;
struct TYPE_4__ {int header_low_payload; union ipc_header_high header_high; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
struct ipc_post {scalar_t__ mailbox_data; TYPE_2__ mrfld_header; } ;
struct ipc_dsp_hdr {int cmd_id; } ;
struct intel_sst_drv {int dev; } ;


 int GFP_KERNEL ;
 unsigned int SST_ASYNC_DRV_ID ;
 int dev_dbg (int ,char*,int ,...) ;
 int dev_err (int ,char*,int ) ;
 int kfree (void*) ;
 void* kmemdup (void*,int ,int ) ;
 int process_fw_async_msg (struct intel_sst_drv*,struct ipc_post*) ;
 scalar_t__ sst_wake_up_block (struct intel_sst_drv*,scalar_t__,unsigned int,int ,void*,int ) ;

void sst_process_reply_mrfld(struct intel_sst_drv *sst_drv_ctx,
  struct ipc_post *msg)
{
 unsigned int drv_id;
 void *data;
 union ipc_header_high msg_high;
 u32 msg_low;
 struct ipc_dsp_hdr *dsp_hdr;

 msg_high = msg->mrfld_header.p.header_high;
 msg_low = msg->mrfld_header.p.header_low_payload;

 dev_dbg(sst_drv_ctx->dev, "IPC process message header %x payload %x\n",
   msg->mrfld_header.p.header_high.full,
   msg->mrfld_header.p.header_low_payload);

 drv_id = msg_high.part.drv_id;


 if (drv_id == SST_ASYNC_DRV_ID) {

  process_fw_async_msg(sst_drv_ctx, msg);
  return;
 }


 if (msg_high.part.result && drv_id && !msg_high.part.large) {

  dev_err(sst_drv_ctx->dev, "FW sent error response 0x%x", msg_low);
  sst_wake_up_block(sst_drv_ctx, msg_high.part.result,
   msg_high.part.drv_id,
   msg_high.part.msg_id, ((void*)0), 0);
  return;
 }






 if (msg_high.part.large) {
  data = kmemdup((void *)msg->mailbox_data, msg_low, GFP_KERNEL);
  if (!data)
   return;

  dsp_hdr = (struct ipc_dsp_hdr *)data;
  dev_dbg(sst_drv_ctx->dev, "cmd_id %d\n", dsp_hdr->cmd_id);
  if (sst_wake_up_block(sst_drv_ctx, msg_high.part.result,
    msg_high.part.drv_id,
    msg_high.part.msg_id, data, msg_low))
   kfree(data);
 } else {
  sst_wake_up_block(sst_drv_ctx, msg_high.part.result,
    msg_high.part.drv_id,
    msg_high.part.msg_id, ((void*)0), 0);
 }

}
