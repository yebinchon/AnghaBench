
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sof_ipc_reply {int dummy; } ;
struct TYPE_3__ {int size; int cmd; } ;
struct sof_ipc_pipe_ready {TYPE_1__ hdr; int comp_id; } ;
struct snd_sof_widget {int comp_id; TYPE_2__* widget; } ;
struct snd_sof_dev {int ipc; int dev; } ;
typedef int reply ;
typedef int ready ;
struct TYPE_4__ {int name; } ;


 int SOF_IPC_GLB_TPLG_MSG ;
 int SOF_IPC_TPLG_PIPE_COMPLETE ;
 int dev_dbg (int ,char*,int ,int ) ;
 int memset (struct sof_ipc_pipe_ready*,int ,int) ;
 int sof_ipc_tx_message (int ,int,struct sof_ipc_pipe_ready*,int,struct sof_ipc_reply*,int) ;

int snd_sof_complete_pipeline(struct snd_sof_dev *sdev,
         struct snd_sof_widget *swidget)
{
 struct sof_ipc_pipe_ready ready;
 struct sof_ipc_reply reply;
 int ret;

 dev_dbg(sdev->dev, "tplg: complete pipeline %s id %d\n",
  swidget->widget->name, swidget->comp_id);

 memset(&ready, 0, sizeof(ready));
 ready.hdr.size = sizeof(ready);
 ready.hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_PIPE_COMPLETE;
 ready.comp_id = swidget->comp_id;

 ret = sof_ipc_tx_message(sdev->ipc,
     ready.hdr.cmd, &ready, sizeof(ready), &reply,
     sizeof(reply));
 if (ret < 0)
  return ret;
 return 1;
}
