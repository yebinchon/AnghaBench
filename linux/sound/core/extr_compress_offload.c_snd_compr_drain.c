
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_stream {TYPE_2__* runtime; TYPE_1__* ops; } ;
struct TYPE_4__ {int state; int sleep; } ;
struct TYPE_3__ {int (* trigger ) (struct snd_compr_stream*,int ) ;} ;


 int EPERM ;
 int EPIPE ;





 int SND_COMPR_TRIGGER_DRAIN ;
 int pr_debug (char*,int) ;
 int snd_compress_wait_for_drain (struct snd_compr_stream*) ;
 int stub1 (struct snd_compr_stream*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int snd_compr_drain(struct snd_compr_stream *stream)
{
 int retval;

 switch (stream->runtime->state) {
 case 132:
 case 129:
 case 130:
 case 131:
  return -EPERM;
 case 128:
  return -EPIPE;
 default:
  break;
 }

 retval = stream->ops->trigger(stream, SND_COMPR_TRIGGER_DRAIN);
 if (retval) {
  pr_debug("SND_COMPR_TRIGGER_DRAIN failed %d\n", retval);
  wake_up(&stream->runtime->sleep);
  return retval;
 }

 return snd_compress_wait_for_drain(stream);
}
