
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int cmd; } ;
struct sof_ipc_stream {TYPE_2__ hdr; int comp_id; } ;
struct sof_ipc_reply {int dummy; } ;
struct snd_sof_widget {TYPE_1__* widget; int comp_id; struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {int dev; int ipc; } ;
typedef int stream ;
typedef int reply ;
struct TYPE_3__ {int name; } ;


 int SOF_IPC_GLB_STREAM_MSG ;
 int dev_err (int ,char*,int ) ;
 int sof_ipc_tx_message (int ,int,struct sof_ipc_stream*,int,struct sof_ipc_reply*,int) ;

__attribute__((used)) static int ipc_trigger(struct snd_sof_widget *swidget, int cmd)
{
 struct snd_sof_dev *sdev = swidget->sdev;
 struct sof_ipc_stream stream;
 struct sof_ipc_reply reply;
 int ret = 0;


 stream.hdr.size = sizeof(stream);
 stream.hdr.cmd = SOF_IPC_GLB_STREAM_MSG | cmd;
 stream.comp_id = swidget->comp_id;


 ret = sof_ipc_tx_message(sdev->ipc, stream.hdr.cmd, &stream,
     sizeof(stream), &reply, sizeof(reply));
 if (ret < 0)
  dev_err(sdev->dev, "error: failed to trigger %s\n",
   swidget->widget->name);

 return ret;
}
