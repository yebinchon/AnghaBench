
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_2__* runtime; } ;
struct lx6464es {int* hardware_running; scalar_t__ board_sample_rate; int setup_mutex; TYPE_1__* card; } ;
struct TYPE_4__ {scalar_t__ rate; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int lx_hardware_close (struct lx6464es*,struct snd_pcm_substream*) ;
 int lx_hardware_open (struct lx6464es*,struct snd_pcm_substream*) ;
 int lx_hardware_start (struct lx6464es*,struct snd_pcm_substream*) ;
 int lx_hardware_stop (struct lx6464es*,struct snd_pcm_substream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct lx6464es* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int lx_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct lx6464es *chip = snd_pcm_substream_chip(substream);
 int err = 0;
 const int is_capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);

 dev_dbg(chip->card->dev, "->lx_pcm_prepare\n");

 mutex_lock(&chip->setup_mutex);

 if (chip->hardware_running[is_capture]) {
  err = lx_hardware_stop(chip, substream);
  if (err < 0) {
   dev_err(chip->card->dev, "failed to stop hardware. "
       "Error code %d\n", err);
   goto exit;
  }

  err = lx_hardware_close(chip, substream);
  if (err < 0) {
   dev_err(chip->card->dev, "failed to close hardware. "
       "Error code %d\n", err);
   goto exit;
  }
 }

 dev_dbg(chip->card->dev, "opening hardware\n");
 err = lx_hardware_open(chip, substream);
 if (err < 0) {
  dev_err(chip->card->dev, "failed to open hardware. "
      "Error code %d\n", err);
  goto exit;
 }

 err = lx_hardware_start(chip, substream);
 if (err < 0) {
  dev_err(chip->card->dev, "failed to start hardware. "
      "Error code %d\n", err);
  goto exit;
 }

 chip->hardware_running[is_capture] = 1;

 if (chip->board_sample_rate != substream->runtime->rate) {
  if (!err)
   chip->board_sample_rate = substream->runtime->rate;
 }

exit:
 mutex_unlock(&chip->setup_mutex);
 return err;
}
