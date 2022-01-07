
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sof_ipc_cmd_hdr {int cmd; } ;
struct snd_sof_dev {int boot_complete; int dev; int boot_wait; } ;
typedef int hdr ;
struct TYPE_2__ {int (* fw_ready ) (struct snd_sof_dev*,int) ;} ;


 int SOF_CMD_TYPE_MASK ;
 int SOF_GLB_TYPE_MASK ;
 int dev_err (int ,char*,...) ;
 int ipc_log_header (int ,char*,int) ;
 int ipc_stream_message (struct snd_sof_dev*,int) ;
 int ipc_trace_message (struct snd_sof_dev*,int) ;
 int snd_sof_ipc_msg_data (struct snd_sof_dev*,int *,struct sof_ipc_cmd_hdr*,int) ;
 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,int) ;
 int wake_up (int *) ;

void snd_sof_ipc_msgs_rx(struct snd_sof_dev *sdev)
{
 struct sof_ipc_cmd_hdr hdr;
 u32 cmd, type;
 int err = 0;


 snd_sof_ipc_msg_data(sdev, ((void*)0), &hdr, sizeof(hdr));
 ipc_log_header(sdev->dev, "ipc rx", hdr.cmd);

 cmd = hdr.cmd & SOF_GLB_TYPE_MASK;
 type = hdr.cmd & SOF_CMD_TYPE_MASK;


 switch (cmd) {
 case 131:
  dev_err(sdev->dev, "error: ipc reply unknown\n");
  break;
 case 135:

  if (!sdev->boot_complete) {
   err = sof_ops(sdev)->fw_ready(sdev, cmd);
   if (err < 0) {




    dev_err(sdev->dev, "error: ABI mismatch %d\n",
     err);
   } else {

    sdev->boot_complete = 1;
   }


   wake_up(&sdev->boot_wait);
  }
  break;
 case 134:
 case 129:
 case 132:
 case 133:
  break;
 case 130:

  ipc_stream_message(sdev, hdr.cmd);
  break;
 case 128:
  ipc_trace_message(sdev, type);
  break;
 default:
  dev_err(sdev->dev, "error: unknown DSP message 0x%x\n", cmd);
  break;
 }

 ipc_log_header(sdev->dev, "ipc rx done", hdr.cmd);
}
