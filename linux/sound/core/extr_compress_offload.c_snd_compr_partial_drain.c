
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_stream {scalar_t__ direction; int next_track; TYPE_2__* runtime; TYPE_1__* ops; } ;
struct TYPE_4__ {int state; int sleep; } ;
struct TYPE_3__ {int (* trigger ) (struct snd_compr_stream*,int ) ;} ;


 int EPERM ;
 int EPIPE ;





 scalar_t__ SND_COMPRESS_CAPTURE ;
 int SND_COMPR_TRIGGER_PARTIAL_DRAIN ;
 int pr_debug (char*) ;
 int snd_compress_wait_for_drain (struct snd_compr_stream*) ;
 int stub1 (struct snd_compr_stream*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int snd_compr_partial_drain(struct snd_compr_stream *stream)
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


 if (stream->direction == SND_COMPRESS_CAPTURE)
  return -EPERM;


 if (stream->next_track == 0)
  return -EPERM;

 retval = stream->ops->trigger(stream, SND_COMPR_TRIGGER_PARTIAL_DRAIN);
 if (retval) {
  pr_debug("Partial drain returned failure\n");
  wake_up(&stream->runtime->sleep);
  return retval;
 }

 stream->next_track = 0;
 return snd_compress_wait_for_drain(stream);
}
