
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int size; int cmd; } ;
struct sof_ipc_stream {TYPE_4__ hdr; int comp_id; } ;
struct sof_ipc_reply {int dummy; } ;
struct TYPE_6__ {int pcm_id; } ;
struct snd_sof_pcm {TYPE_3__* stream; TYPE_2__ pcm; } ;
struct snd_sof_dev {int ipc; int dev; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
typedef int stream ;
typedef int reply ;
struct TYPE_7__ {int comp_id; } ;
struct TYPE_5__ {scalar_t__ no_pcm; } ;


 int DRV_NAME ;
 int EINVAL ;






 int SOF_IPC_GLB_STREAM_MSG ;
 int SOF_IPC_STREAM_TRIG_PAUSE ;
 int SOF_IPC_STREAM_TRIG_RELEASE ;
 int SOF_IPC_STREAM_TRIG_START ;
 int SOF_IPC_STREAM_TRIG_STOP ;
 int dev_dbg (int ,char*,int ,size_t,int) ;
 int dev_err (int ,char*,...) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct snd_sof_pcm* snd_sof_find_spcm_dai (struct snd_sof_dev*,struct snd_soc_pcm_runtime*) ;
 int snd_sof_pcm_platform_trigger (struct snd_sof_dev*,struct snd_pcm_substream*,int) ;
 int sof_ipc_tx_message (int ,int ,struct sof_ipc_stream*,int,struct sof_ipc_reply*,int) ;
 int sof_pcm_dsp_pcm_free (struct snd_pcm_substream*,struct snd_sof_dev*,struct snd_sof_pcm*) ;
 int sof_pcm_prepare (struct snd_pcm_substream*) ;

__attribute__((used)) static int sof_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(component);
 struct snd_sof_pcm *spcm;
 struct sof_ipc_stream stream;
 struct sof_ipc_reply reply;
 bool reset_hw_params = 0;
 bool ipc_first = 0;
 int ret;


 if (rtd->dai_link->no_pcm)
  return 0;

 spcm = snd_sof_find_spcm_dai(sdev, rtd);
 if (!spcm)
  return -EINVAL;

 dev_dbg(sdev->dev, "pcm: trigger stream %d dir %d cmd %d\n",
  spcm->pcm.pcm_id, substream->stream, cmd);

 stream.hdr.size = sizeof(stream);
 stream.hdr.cmd = SOF_IPC_GLB_STREAM_MSG;
 stream.comp_id = spcm->stream[substream->stream].comp_id;

 switch (cmd) {
 case 133:
  stream.hdr.cmd |= SOF_IPC_STREAM_TRIG_PAUSE;
  ipc_first = 1;
  break;
 case 132:
  stream.hdr.cmd |= SOF_IPC_STREAM_TRIG_RELEASE;
  break;
 case 131:

  ret = sof_pcm_prepare(substream);
  if (ret < 0) {
   dev_err(sdev->dev,
    "error: failed to set up hw_params upon resume\n");
   return ret;
  }


 case 130:
  stream.hdr.cmd |= SOF_IPC_STREAM_TRIG_START;
  break;
 case 128:
 case 129:
  stream.hdr.cmd |= SOF_IPC_STREAM_TRIG_STOP;
  ipc_first = 1;
  reset_hw_params = 1;
  break;
 default:
  dev_err(sdev->dev, "error: unhandled trigger cmd %d\n", cmd);
  return -EINVAL;
 }





 if (!ipc_first)
  snd_sof_pcm_platform_trigger(sdev, substream, cmd);


 ret = sof_ipc_tx_message(sdev->ipc, stream.hdr.cmd, &stream,
     sizeof(stream), &reply, sizeof(reply));


 if (ipc_first)
  snd_sof_pcm_platform_trigger(sdev, substream, cmd);


 if (!ret && reset_hw_params)
  ret = sof_pcm_dsp_pcm_free(substream, sdev, spcm);

 return ret;
}
