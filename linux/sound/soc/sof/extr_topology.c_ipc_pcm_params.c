
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sof_ipc_pcm_params_reply {int dummy; } ;
struct TYPE_7__ {int size; int cmd; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {int direction; int sample_valid_bytes; int frame_fmt; int host_period_bytes; int channels; int rate; int buffer_fmt; TYPE_1__ hdr; } ;
struct sof_ipc_pcm_params {TYPE_3__ hdr; TYPE_2__ params; int comp_id; } ;
struct snd_sof_widget {TYPE_4__* widget; int comp_id; struct snd_sof_dev* sdev; } ;
struct snd_sof_pcm {struct snd_pcm_hw_params* params; } ;
struct snd_sof_dev {int dev; int ipc; } ;
struct snd_pcm_hw_params {int dummy; } ;
typedef int pcm ;
typedef int ipc_params_reply ;
struct TYPE_8__ {int name; int sname; } ;


 int EINVAL ;



 int SOF_IPC_BUFFER_INTERLEAVED ;
 int SOF_IPC_FRAME_S16_LE ;
 int SOF_IPC_FRAME_S24_4LE ;
 int SOF_IPC_FRAME_S32_LE ;
 int SOF_IPC_GLB_STREAM_MSG ;
 int SOF_IPC_STREAM_PCM_PARAMS ;
 int dev_err (int ,char*,int ) ;
 int memset (struct sof_ipc_pcm_params*,int ,int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct snd_sof_pcm* snd_sof_find_spcm_name (struct snd_sof_dev*,int ) ;
 int sof_ipc_tx_message (int ,int,struct sof_ipc_pcm_params*,int,struct sof_ipc_pcm_params_reply*,int) ;

__attribute__((used)) static int ipc_pcm_params(struct snd_sof_widget *swidget, int dir)
{
 struct sof_ipc_pcm_params_reply ipc_params_reply;
 struct snd_sof_dev *sdev = swidget->sdev;
 struct sof_ipc_pcm_params pcm;
 struct snd_pcm_hw_params *params;
 struct snd_sof_pcm *spcm;
 int ret = 0;

 memset(&pcm, 0, sizeof(pcm));


 spcm = snd_sof_find_spcm_name(sdev, swidget->widget->sname);
 if (!spcm) {
  dev_err(sdev->dev, "error: cannot find PCM for %s\n",
   swidget->widget->name);
  return -EINVAL;
 }

 params = &spcm->params[dir];


 pcm.hdr.size = sizeof(pcm);
 pcm.hdr.cmd = SOF_IPC_GLB_STREAM_MSG | SOF_IPC_STREAM_PCM_PARAMS;
 pcm.comp_id = swidget->comp_id;
 pcm.params.hdr.size = sizeof(pcm.params);
 pcm.params.direction = dir;
 pcm.params.sample_valid_bytes = params_width(params) >> 3;
 pcm.params.buffer_fmt = SOF_IPC_BUFFER_INTERLEAVED;
 pcm.params.rate = params_rate(params);
 pcm.params.channels = params_channels(params);
 pcm.params.host_period_bytes = params_period_bytes(params);


 switch (params_format(params)) {
 case 130:
  pcm.params.frame_fmt = SOF_IPC_FRAME_S16_LE;
  break;
 case 129:
  pcm.params.frame_fmt = SOF_IPC_FRAME_S24_4LE;
  break;
 case 128:
  pcm.params.frame_fmt = SOF_IPC_FRAME_S32_LE;
  break;
 default:
  return -EINVAL;
 }


 ret = sof_ipc_tx_message(sdev->ipc, pcm.hdr.cmd, &pcm, sizeof(pcm),
     &ipc_params_reply, sizeof(ipc_params_reply));
 if (ret < 0)
  dev_err(sdev->dev, "error: pcm params failed for %s\n",
   swidget->widget->name);

 return ret;
}
