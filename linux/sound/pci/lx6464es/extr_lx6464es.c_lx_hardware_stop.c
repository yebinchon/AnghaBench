
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; } ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int lx_pipe_pause (struct lx6464es*,int ,int) ;
 int lx_pipe_stop (struct lx6464es*,int ,int) ;
 int lx_pipe_wait_for_idle (struct lx6464es*,int ,int) ;

__attribute__((used)) static int lx_hardware_stop(struct lx6464es *chip,
       struct snd_pcm_substream *substream)
{
 int err = 0;
 int is_capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);

 dev_dbg(chip->card->dev, "pausing pipe\n");
 err = lx_pipe_pause(chip, 0, is_capture);
 if (err < 0) {
  dev_err(chip->card->dev, "pausing pipe failed\n");
  return err;
 }

 dev_dbg(chip->card->dev, "waiting for pipe to become idle\n");
 err = lx_pipe_wait_for_idle(chip, 0, is_capture);
 if (err < 0) {
  dev_err(chip->card->dev, "waiting for pipe failed\n");
  return err;
 }

 dev_dbg(chip->card->dev, "stopping pipe\n");
 err = lx_pipe_stop(chip, 0, is_capture);
 if (err < 0) {
  dev_err(chip->card->dev, "stopping pipe failed\n");
  return err;
 }

 return err;
}
