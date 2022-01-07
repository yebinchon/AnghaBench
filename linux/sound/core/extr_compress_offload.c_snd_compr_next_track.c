
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_stream {scalar_t__ direction; int metadata_set; int next_track; TYPE_2__* ops; TYPE_1__* runtime; } ;
struct TYPE_4__ {int (* trigger ) (struct snd_compr_stream*,int ) ;} ;
struct TYPE_3__ {scalar_t__ state; } ;


 int EPERM ;
 scalar_t__ SNDRV_PCM_STATE_RUNNING ;
 scalar_t__ SND_COMPRESS_CAPTURE ;
 int SND_COMPR_TRIGGER_NEXT_TRACK ;
 int stub1 (struct snd_compr_stream*,int ) ;

__attribute__((used)) static int snd_compr_next_track(struct snd_compr_stream *stream)
{
 int retval;


 if (stream->runtime->state != SNDRV_PCM_STATE_RUNNING)
  return -EPERM;


 if (stream->direction == SND_COMPRESS_CAPTURE)
  return -EPERM;




 if (stream->metadata_set == 0)
  return -EPERM;

 retval = stream->ops->trigger(stream, SND_COMPR_TRIGGER_NEXT_TRACK);
 if (retval != 0)
  return retval;
 stream->metadata_set = 0;
 stream->next_track = 1;
 return 0;
}
