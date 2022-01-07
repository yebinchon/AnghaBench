
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; scalar_t__ dma_area; } ;
struct TYPE_8__ {int pos_done; } ;
struct snd_line6_pcm {TYPE_4__ in; TYPE_3__* line6; TYPE_2__* properties; } ;
struct TYPE_7__ {int ifcdev; } ;
struct TYPE_5__ {int channels_max; } ;
struct TYPE_6__ {int bytes_per_channel; TYPE_1__ capture_hw; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int dev_err (int ,char*,int) ;
 struct snd_pcm_substream* get_substream (struct snd_line6_pcm*,int ) ;
 int memcpy (scalar_t__,char*,int) ;

void line6_capture_copy(struct snd_line6_pcm *line6pcm, char *fbuf, int fsize)
{
 struct snd_pcm_substream *substream =
     get_substream(line6pcm, SNDRV_PCM_STREAM_CAPTURE);
 struct snd_pcm_runtime *runtime = substream->runtime;
 const int bytes_per_frame =
  line6pcm->properties->bytes_per_channel *
  line6pcm->properties->capture_hw.channels_max;
 int frames = fsize / bytes_per_frame;

 if (runtime == ((void*)0))
  return;

 if (line6pcm->in.pos_done + frames > runtime->buffer_size) {




  int len;

  len = runtime->buffer_size - line6pcm->in.pos_done;

  if (len > 0) {
   memcpy(runtime->dma_area +
          line6pcm->in.pos_done * bytes_per_frame, fbuf,
          len * bytes_per_frame);
   memcpy(runtime->dma_area, fbuf + len * bytes_per_frame,
          (frames - len) * bytes_per_frame);
  } else {

   dev_err(line6pcm->line6->ifcdev,
    "driver bug: len = %d\n", len);
  }
 } else {

  memcpy(runtime->dma_area +
         line6pcm->in.pos_done * bytes_per_frame, fbuf, fsize);
 }

 line6pcm->in.pos_done += frames;
 if (line6pcm->in.pos_done >= runtime->buffer_size)
  line6pcm->in.pos_done -= runtime->buffer_size;
}
