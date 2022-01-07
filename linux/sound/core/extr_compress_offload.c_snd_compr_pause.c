
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_stream {TYPE_2__* runtime; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int (* trigger ) (struct snd_compr_stream*,int ) ;} ;


 int EPERM ;
 scalar_t__ SNDRV_PCM_STATE_PAUSED ;
 scalar_t__ SNDRV_PCM_STATE_RUNNING ;
 int SNDRV_PCM_TRIGGER_PAUSE_PUSH ;
 int stub1 (struct snd_compr_stream*,int ) ;

__attribute__((used)) static int snd_compr_pause(struct snd_compr_stream *stream)
{
 int retval;

 if (stream->runtime->state != SNDRV_PCM_STATE_RUNNING)
  return -EPERM;
 retval = stream->ops->trigger(stream, SNDRV_PCM_TRIGGER_PAUSE_PUSH);
 if (!retval)
  stream->runtime->state = SNDRV_PCM_STATE_PAUSED;
 return retval;
}
