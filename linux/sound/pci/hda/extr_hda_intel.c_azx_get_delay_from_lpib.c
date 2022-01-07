
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int stream; int runtime; } ;
struct TYPE_4__ {int delay_negative_threshold; int period_bytes; scalar_t__ bufsize; struct snd_pcm_substream* substream; } ;
struct azx_dev {TYPE_2__ core; } ;
struct azx {int ** get_delay; int driver_caps; TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int AZX_DCAPS_COUNT_LPIB_DELAY ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int azx_get_pos_lpib (struct azx*,struct azx_dev*) ;
 int bytes_to_frames (int ,int) ;
 int dev_info (int ,char*,int,int) ;

__attribute__((used)) static int azx_get_delay_from_lpib(struct azx *chip, struct azx_dev *azx_dev,
       unsigned int pos)
{
 struct snd_pcm_substream *substream = azx_dev->core.substream;
 int stream = substream->stream;
 unsigned int lpib_pos = azx_get_pos_lpib(chip, azx_dev);
 int delay;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK)
  delay = pos - lpib_pos;
 else
  delay = lpib_pos - pos;
 if (delay < 0) {
  if (delay >= azx_dev->core.delay_negative_threshold)
   delay = 0;
  else
   delay += azx_dev->core.bufsize;
 }

 if (delay >= azx_dev->core.period_bytes) {
  dev_info(chip->card->dev,
    "Unstable LPIB (%d >= %d); disabling LPIB delay counting\n",
    delay, azx_dev->core.period_bytes);
  delay = 0;
  chip->driver_caps &= ~AZX_DCAPS_COUNT_LPIB_DELAY;
  chip->get_delay[stream] = ((void*)0);
 }

 return bytes_to_frames(substream->runtime, delay);
}
