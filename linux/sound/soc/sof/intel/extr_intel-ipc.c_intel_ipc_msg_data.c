
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int offset; } ;
struct TYPE_4__ {int size; } ;
struct snd_sof_dev {TYPE_2__ dsp_box; TYPE_1__ stream_box; } ;
struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct intel_stream {int posn_offset; } ;
struct TYPE_6__ {struct intel_stream* private_data; } ;


 int sof_mailbox_read (struct snd_sof_dev*,int ,void*,size_t) ;

void intel_ipc_msg_data(struct snd_sof_dev *sdev,
   struct snd_pcm_substream *substream,
   void *p, size_t sz)
{
 if (!substream || !sdev->stream_box.size) {
  sof_mailbox_read(sdev, sdev->dsp_box.offset, p, sz);
 } else {
  struct intel_stream *stream = substream->runtime->private_data;


  if (stream)
   sof_mailbox_read(sdev, stream->posn_offset, p, sz);
 }
}
