
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sof_ipc_stream_posn {int dummy; } ;
struct sof_ipc_pcm_params_reply {size_t posn_offset; } ;
struct TYPE_4__ {size_t size; size_t offset; } ;
struct snd_sof_dev {int dev; TYPE_2__ stream_box; } ;
struct snd_pcm_substream {int stream; TYPE_1__* runtime; } ;
struct intel_stream {size_t posn_offset; } ;
struct TYPE_3__ {struct intel_stream* private_data; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int ,size_t) ;

int intel_ipc_pcm_params(struct snd_sof_dev *sdev,
    struct snd_pcm_substream *substream,
    const struct sof_ipc_pcm_params_reply *reply)
{
 struct intel_stream *stream = substream->runtime->private_data;
 size_t posn_offset = reply->posn_offset;


 if (posn_offset > sdev->stream_box.size ||
     posn_offset % sizeof(struct sof_ipc_stream_posn) != 0)
  return -EINVAL;

 stream->posn_offset = sdev->stream_box.offset + posn_offset;

 dev_dbg(sdev->dev, "pcm: stream dir %d, posn mailbox offset is %zu",
  substream->stream, stream->posn_offset);

 return 0;
}
