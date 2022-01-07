
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_stream {TYPE_2__* runtime; TYPE_1__* ops; int direction; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {int (* trigger ) (struct snd_compr_stream*,int ) ;} ;


 int EPERM ;

 int SNDRV_PCM_STATE_RUNNING ;

 int SNDRV_PCM_TRIGGER_START ;
 int SND_COMPRESS_CAPTURE ;
 int stub1 (struct snd_compr_stream*,int ) ;

__attribute__((used)) static int snd_compr_start(struct snd_compr_stream *stream)
{
 int retval;

 switch (stream->runtime->state) {
 case 128:
  if (stream->direction != SND_COMPRESS_CAPTURE)
   return -EPERM;
  break;
 case 129:
  break;
 default:
  return -EPERM;
 }

 retval = stream->ops->trigger(stream, SNDRV_PCM_TRIGGER_START);
 if (!retval)
  stream->runtime->state = SNDRV_PCM_STATE_RUNNING;
 return retval;
}
