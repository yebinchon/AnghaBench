
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stream_info {int drain_cb_param; int (* drain_notify ) (int ) ;int compr_cb_param; int (* compr_cb ) (int ) ;int pcm_substream; int (* period_elapsed ) (int ) ;int status; } ;
struct TYPE_3__ {int header_low_payload; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
struct ipc_post {void* mailbox_data; TYPE_2__ mrfld_header; } ;
struct ipc_dsp_hdr {int cmd_id; int pipe_id; } ;
struct intel_sst_drv {int dev; struct stream_info* streams; } ;


 int DUMP_PREFIX_NONE ;





 int KERN_DEBUG ;
 int STREAM_INIT ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,...) ;
 int get_stream_id_mrfld (struct intel_sst_drv*,int) ;
 int print_hex_dump (int ,int *,int ,int,int,void*,int,int) ;
 int process_fw_init (struct intel_sst_drv*,void*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

__attribute__((used)) static void process_fw_async_msg(struct intel_sst_drv *sst_drv_ctx,
   struct ipc_post *msg)
{
 u32 msg_id;
 int str_id;
 u32 data_size, i;
 void *data_offset;
 struct stream_info *stream;
 u32 msg_low, pipe_id;

 msg_low = msg->mrfld_header.p.header_low_payload;
 msg_id = ((struct ipc_dsp_hdr *)msg->mailbox_data)->cmd_id;
 data_offset = (msg->mailbox_data + sizeof(struct ipc_dsp_hdr));
 data_size = msg_low - (sizeof(struct ipc_dsp_hdr));

 switch (msg_id) {
 case 128:
  pipe_id = ((struct ipc_dsp_hdr *)msg->mailbox_data)->pipe_id;
  str_id = get_stream_id_mrfld(sst_drv_ctx, pipe_id);
  if (str_id > 0) {
   dev_dbg(sst_drv_ctx->dev,
    "Period elapsed rcvd for pipe id 0x%x\n",
    pipe_id);
   stream = &sst_drv_ctx->streams[str_id];

   if (stream->status == STREAM_INIT)
    break;
   if (stream->period_elapsed)
    stream->period_elapsed(stream->pcm_substream);
   if (stream->compr_cb)
    stream->compr_cb(stream->compr_cb_param);
  }
  break;

 case 131:
  pipe_id = ((struct ipc_dsp_hdr *)msg->mailbox_data)->pipe_id;
  str_id = get_stream_id_mrfld(sst_drv_ctx, pipe_id);
  if (str_id > 0) {
   stream = &sst_drv_ctx->streams[str_id];
   if (stream->drain_notify)
    stream->drain_notify(stream->drain_cb_param);
  }
  break;

 case 130:
  dev_err(sst_drv_ctx->dev, "FW sent async error msg:\n");
  for (i = 0; i < (data_size/4); i++)
   print_hex_dump(KERN_DEBUG, ((void*)0), DUMP_PREFIX_NONE,
     16, 4, data_offset, data_size, 0);
  break;

 case 129:
  process_fw_init(sst_drv_ctx, data_offset);
  break;

 case 132:
  pipe_id = ((struct ipc_dsp_hdr *)msg->mailbox_data)->pipe_id;
  str_id = get_stream_id_mrfld(sst_drv_ctx, pipe_id);
  if (str_id > 0)
   dev_err(sst_drv_ctx->dev,
    "Buffer under-run for pipe:%#x str_id:%d\n",
    pipe_id, str_id);
  break;

 default:
  dev_err(sst_drv_ctx->dev,
   "Unrecognized async msg from FW msg_id %#x\n", msg_id);
 }
}
