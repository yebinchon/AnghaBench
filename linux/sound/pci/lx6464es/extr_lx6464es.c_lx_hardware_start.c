
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int lx_pipe_start (struct lx6464es*,int ,int) ;
 int lx_pipe_wait_for_start (struct lx6464es*,int ,int) ;
 int lx_stream_set_format (struct lx6464es*,struct snd_pcm_runtime*,int ,int) ;

__attribute__((used)) static int lx_hardware_start(struct lx6464es *chip,
        struct snd_pcm_substream *substream)
{
 int err = 0;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int is_capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);

 dev_dbg(chip->card->dev, "setting stream format\n");
 err = lx_stream_set_format(chip, runtime, 0, is_capture);
 if (err < 0) {
  dev_err(chip->card->dev, "setting stream format failed\n");
  return err;
 }

 dev_dbg(chip->card->dev, "starting pipe\n");
 err = lx_pipe_start(chip, 0, is_capture);
 if (err < 0) {
  dev_err(chip->card->dev, "starting pipe failed\n");
  return err;
 }

 dev_dbg(chip->card->dev, "waiting for pipe to start\n");
 err = lx_pipe_wait_for_start(chip, 0, is_capture);
 if (err < 0) {
  dev_err(chip->card->dev, "waiting for pipe failed\n");
  return err;
 }

 return err;
}
