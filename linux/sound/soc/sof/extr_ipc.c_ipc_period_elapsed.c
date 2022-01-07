
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sof_ipc_stream_posn {int wallclock; int dai_posn; int host_posn; } ;
struct snd_sof_pcm_stream {TYPE_2__* substream; int posn; } ;
struct snd_sof_pcm {struct snd_sof_pcm_stream* stream; } ;
struct snd_sof_dev {int dev; } ;
typedef int posn ;
struct TYPE_5__ {TYPE_1__* runtime; } ;
struct TYPE_4__ {int no_period_wakeup; } ;


 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_err (int ,char*,int ) ;
 int memcpy (int *,struct sof_ipc_stream_posn*,int) ;
 struct snd_sof_pcm* snd_sof_find_spcm_comp (struct snd_sof_dev*,int ,int*) ;
 int snd_sof_ipc_msg_data (struct snd_sof_dev*,TYPE_2__*,struct sof_ipc_stream_posn*,int) ;
 int snd_sof_pcm_period_elapsed (TYPE_2__*) ;

__attribute__((used)) static void ipc_period_elapsed(struct snd_sof_dev *sdev, u32 msg_id)
{
 struct snd_sof_pcm_stream *stream;
 struct sof_ipc_stream_posn posn;
 struct snd_sof_pcm *spcm;
 int direction;

 spcm = snd_sof_find_spcm_comp(sdev, msg_id, &direction);
 if (!spcm) {
  dev_err(sdev->dev,
   "error: period elapsed for unknown stream, msg_id %d\n",
   msg_id);
  return;
 }

 stream = &spcm->stream[direction];
 snd_sof_ipc_msg_data(sdev, stream->substream, &posn, sizeof(posn));

 dev_dbg(sdev->dev, "posn : host 0x%llx dai 0x%llx wall 0x%llx\n",
  posn.host_posn, posn.dai_posn, posn.wallclock);

 memcpy(&stream->posn, &posn, sizeof(posn));


 if (!stream->substream->runtime->no_period_wakeup)
  snd_sof_pcm_period_elapsed(stream->substream);
}
