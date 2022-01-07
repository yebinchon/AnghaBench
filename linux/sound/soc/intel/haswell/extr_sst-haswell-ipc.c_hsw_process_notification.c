
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_hsw {int dev; int boot_complete; struct sst_dsp* dsp; } ;
struct sst_dsp {int dummy; } ;


 int IPC_FW_READY ;
 int SST_IPCD ;
 int dev_err (int ,char*,int,int) ;
 int hsw_fw_ready (struct sst_hsw*,int) ;
 int hsw_log_message (struct sst_hsw*,int) ;
 int hsw_module_message (struct sst_hsw*,int) ;
 int hsw_stream_message (struct sst_hsw*,int) ;
 int msg_get_global_type (int) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;
 int trace_ipc_request (char*,int) ;

__attribute__((used)) static int hsw_process_notification(struct sst_hsw *hsw)
{
 struct sst_dsp *sst = hsw->dsp;
 u32 type, header;
 int handled = 1;

 header = sst_dsp_shim_read_unlocked(sst, SST_IPCD);
 type = msg_get_global_type(header);

 trace_ipc_request("processing -->", header);


 if (!hsw->boot_complete && header & IPC_FW_READY) {
  hsw_fw_ready(hsw, header);
  return handled;
 }

 switch (type) {
 case 136:
 case 142:
 case 139:
 case 137:
 case 132:
 case 138:
 case 130:
 case 140:
 case 135:
 case 134:
 case 131:
 case 129:
  dev_err(hsw->dev, "error: message type %d header 0x%x\n",
   type, header);
  break;
 case 128:
  handled = hsw_stream_message(hsw, header);
  break;
 case 141:
  handled = hsw_log_message(hsw, header);
  break;
 case 133:
  handled = hsw_module_message(hsw, header);
  break;
 default:
  dev_err(hsw->dev, "error: unexpected type %d hdr 0x%8.8x\n",
   type, header);
  break;
 }

 return handled;
}
