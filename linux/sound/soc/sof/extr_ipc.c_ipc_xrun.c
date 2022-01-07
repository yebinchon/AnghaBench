
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sof_ipc_stream_posn {int xrun_size; int xrun_comp_id; int host_posn; } ;
struct snd_sof_pcm_stream {int substream; int posn; } ;
struct snd_sof_pcm {struct snd_sof_pcm_stream* stream; } ;
struct snd_sof_dev {int dev; } ;
typedef int posn ;


 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_err (int ,char*,int ) ;
 int memcpy (int *,struct sof_ipc_stream_posn*,int) ;
 int snd_pcm_stop_xrun (int ) ;
 struct snd_sof_pcm* snd_sof_find_spcm_comp (struct snd_sof_dev*,int ,int*) ;
 int snd_sof_ipc_msg_data (struct snd_sof_dev*,int ,struct sof_ipc_stream_posn*,int) ;

__attribute__((used)) static void ipc_xrun(struct snd_sof_dev *sdev, u32 msg_id)
{
 struct snd_sof_pcm_stream *stream;
 struct sof_ipc_stream_posn posn;
 struct snd_sof_pcm *spcm;
 int direction;

 spcm = snd_sof_find_spcm_comp(sdev, msg_id, &direction);
 if (!spcm) {
  dev_err(sdev->dev, "error: XRUN for unknown stream, msg_id %d\n",
   msg_id);
  return;
 }

 stream = &spcm->stream[direction];
 snd_sof_ipc_msg_data(sdev, stream->substream, &posn, sizeof(posn));

 dev_dbg(sdev->dev, "posn XRUN: host %llx comp %d size %d\n",
  posn.host_posn, posn.xrun_comp_id, posn.xrun_size);






}
