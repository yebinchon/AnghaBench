
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_runtime {int channels; int sample_bits; int format; } ;
struct TYPE_5__ {int* cmd; } ;
struct lx6464es {int msg_lock; TYPE_2__ rmh; TYPE_1__* card; } ;
struct TYPE_4__ {int dev; } ;


 int CMD_0C_DEF_STREAM ;
 int PIPE_INFO_TO_CMD (int,int) ;
 int STREAM_FMT_16b ;
 int STREAM_FMT_OFFSET ;
 int STREAM_FMT_intel ;
 int dev_err (int ,char*,int,int) ;
 int lx_message_init (TYPE_2__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_pcm_format_little_endian (int ) ;

int lx_stream_set_format(struct lx6464es *chip, struct snd_pcm_runtime *runtime,
    u32 pipe, int is_capture)
{
 int err;
 u32 pipe_cmd = PIPE_INFO_TO_CMD(is_capture, pipe);
 u32 channels = runtime->channels;

 if (runtime->channels != channels)
  dev_err(chip->card->dev, "channel count mismatch: %d vs %d",
      runtime->channels, channels);

 mutex_lock(&chip->msg_lock);
 lx_message_init(&chip->rmh, CMD_0C_DEF_STREAM);

 chip->rmh.cmd[0] |= pipe_cmd;

 if (runtime->sample_bits == 16)

  chip->rmh.cmd[0] |= (STREAM_FMT_16b << STREAM_FMT_OFFSET);

 if (snd_pcm_format_little_endian(runtime->format))

  chip->rmh.cmd[0] |= (STREAM_FMT_intel << STREAM_FMT_OFFSET);

 chip->rmh.cmd[0] |= channels-1;

 err = lx_message_send_atomic(chip, &chip->rmh);
 mutex_unlock(&chip->msg_lock);

 return err;
}
