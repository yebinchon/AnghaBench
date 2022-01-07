
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct urb {TYPE_4__* iso_frame_desc; int start_frame; int transfer_buffer_length; int transfer_buffer; scalar_t__ context; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; } ;
struct TYPE_10__ {scalar_t__ pos_done; int bytes; int period; int lock; int running; int unlink_urbs; int active_urbs; struct urb** urbs; int last_frame; } ;
struct snd_line6_pcm {TYPE_5__ out; TYPE_3__* line6; TYPE_2__* properties; } ;
struct TYPE_9__ {int status; scalar_t__ length; } ;
struct TYPE_8__ {int iso_buffers; } ;
struct TYPE_6__ {int channels_max; } ;
struct TYPE_7__ {int bytes_per_channel; TYPE_1__ playback_hw; } ;


 int EXDEV ;
 int LINE6_ISO_PACKETS ;
 int LINE6_STREAM_PCM ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int clear_bit (int,int *) ;
 struct snd_pcm_substream* get_substream (struct snd_line6_pcm*,int ) ;
 int memset (int ,int ,int ) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int submit_audio_out_urb (struct snd_line6_pcm*) ;
 scalar_t__ test_and_clear_bit (int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void audio_out_callback(struct urb *urb)
{
 int i, index, length = 0, shutdown = 0;
 unsigned long flags;
 struct snd_line6_pcm *line6pcm = (struct snd_line6_pcm *)urb->context;
 struct snd_pcm_substream *substream =
     get_substream(line6pcm, SNDRV_PCM_STREAM_PLAYBACK);
 const int bytes_per_frame =
  line6pcm->properties->bytes_per_channel *
  line6pcm->properties->playback_hw.channels_max;





 line6pcm->out.last_frame = urb->start_frame;


 for (index = 0; index < line6pcm->line6->iso_buffers; index++)
  if (urb == line6pcm->out.urbs[index])
   break;

 if (index >= line6pcm->line6->iso_buffers)
  return;

 for (i = 0; i < LINE6_ISO_PACKETS; i++)
  length += urb->iso_frame_desc[i].length;

 spin_lock_irqsave(&line6pcm->out.lock, flags);

 if (test_bit(LINE6_STREAM_PCM, &line6pcm->out.running)) {
  struct snd_pcm_runtime *runtime = substream->runtime;

  line6pcm->out.pos_done +=
      length / bytes_per_frame;

  if (line6pcm->out.pos_done >= runtime->buffer_size)
   line6pcm->out.pos_done -= runtime->buffer_size;
 }

 clear_bit(index, &line6pcm->out.active_urbs);

 for (i = 0; i < LINE6_ISO_PACKETS; i++)
  if (urb->iso_frame_desc[i].status == -EXDEV) {
   shutdown = 1;
   break;
  }

 if (test_and_clear_bit(index, &line6pcm->out.unlink_urbs))
  shutdown = 1;

 if (!shutdown) {
  submit_audio_out_urb(line6pcm);

  if (test_bit(LINE6_STREAM_PCM, &line6pcm->out.running)) {
   line6pcm->out.bytes += length;
   if (line6pcm->out.bytes >= line6pcm->out.period) {
    line6pcm->out.bytes %= line6pcm->out.period;
    spin_unlock(&line6pcm->out.lock);
    snd_pcm_period_elapsed(substream);
    spin_lock(&line6pcm->out.lock);
   }
  }
 }
 spin_unlock_irqrestore(&line6pcm->out.lock, flags);
}
