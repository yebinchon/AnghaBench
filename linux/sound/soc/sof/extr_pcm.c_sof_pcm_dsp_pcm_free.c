
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int cmd; } ;
struct sof_ipc_stream {TYPE_2__ hdr; int comp_id; } ;
struct sof_ipc_reply {int dummy; } ;
struct snd_sof_pcm {int* prepared; TYPE_1__* stream; } ;
struct snd_sof_dev {int ipc; } ;
struct snd_pcm_substream {size_t stream; } ;
typedef int stream ;
typedef int reply ;
struct TYPE_3__ {int comp_id; } ;


 int SOF_IPC_GLB_STREAM_MSG ;
 int SOF_IPC_STREAM_PCM_FREE ;
 int sof_ipc_tx_message (int ,int,struct sof_ipc_stream*,int,struct sof_ipc_reply*,int) ;

__attribute__((used)) static int sof_pcm_dsp_pcm_free(struct snd_pcm_substream *substream,
    struct snd_sof_dev *sdev,
    struct snd_sof_pcm *spcm)
{
 struct sof_ipc_stream stream;
 struct sof_ipc_reply reply;
 int ret;

 stream.hdr.size = sizeof(stream);
 stream.hdr.cmd = SOF_IPC_GLB_STREAM_MSG | SOF_IPC_STREAM_PCM_FREE;
 stream.comp_id = spcm->stream[substream->stream].comp_id;


 ret = sof_ipc_tx_message(sdev->ipc, stream.hdr.cmd, &stream,
     sizeof(stream), &reply, sizeof(reply));
 if (!ret)
  spcm->prepared[substream->stream] = 0;

 return ret;
}
