
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_usX2Y_substream {int state; TYPE_2__* usX2Y; } ;
struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct TYPE_6__ {struct snd_usX2Y_substream* private_data; } ;
struct TYPE_5__ {TYPE_1__** subs; } ;
struct TYPE_4__ {int state; } ;


 int EINVAL ;
 int EPIPE ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;


 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int snd_printdd (char*) ;
 int state_PREPARED ;
 int state_PRERUNNING ;

__attribute__((used)) static int snd_usX2Y_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_usX2Y_substream *subs = substream->runtime->private_data;

 switch (cmd) {
 case 129:
  snd_printdd("snd_usX2Y_pcm_trigger(START)\n");
  if (atomic_read(&subs->state) == state_PREPARED &&
      atomic_read(&subs->usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE]->state) >= state_PREPARED) {
   atomic_set(&subs->state, state_PRERUNNING);
  } else {
   snd_printdd("\n");
   return -EPIPE;
  }
  break;
 case 128:
  snd_printdd("snd_usX2Y_pcm_trigger(STOP)\n");
  if (atomic_read(&subs->state) >= state_PRERUNNING)
   atomic_set(&subs->state, state_PREPARED);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
