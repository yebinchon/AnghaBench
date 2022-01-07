
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_stream {TYPE_2__* runtime; TYPE_1__* ops; } ;
struct TYPE_4__ {int state; scalar_t__ total_bytes_transferred; scalar_t__ total_bytes_available; } ;
struct TYPE_3__ {int (* trigger ) (struct snd_compr_stream*,int ) ;} ;


 int EPERM ;



 int SNDRV_PCM_TRIGGER_STOP ;
 int snd_compr_drain_notify (struct snd_compr_stream*) ;
 int stub1 (struct snd_compr_stream*,int ) ;

__attribute__((used)) static int snd_compr_stop(struct snd_compr_stream *stream)
{
 int retval;

 switch (stream->runtime->state) {
 case 130:
 case 128:
 case 129:
  return -EPERM;
 default:
  break;
 }

 retval = stream->ops->trigger(stream, SNDRV_PCM_TRIGGER_STOP);
 if (!retval) {
  snd_compr_drain_notify(stream);
  stream->runtime->total_bytes_available = 0;
  stream->runtime->total_bytes_transferred = 0;
 }
 return retval;
}
