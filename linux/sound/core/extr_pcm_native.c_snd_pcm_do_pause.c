
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* ops; TYPE_1__* runtime; } ;
struct TYPE_4__ {int (* trigger ) (struct snd_pcm_substream*,int ) ;} ;
struct TYPE_3__ {scalar_t__ hw_ptr_jiffies; struct snd_pcm_substream* trigger_master; } ;


 int HZ ;
 int SNDRV_PCM_TRIGGER_PAUSE_PUSH ;
 int SNDRV_PCM_TRIGGER_PAUSE_RELEASE ;
 scalar_t__ jiffies ;
 int snd_pcm_update_hw_ptr (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_pcm_do_pause(struct snd_pcm_substream *substream, int push)
{
 if (substream->runtime->trigger_master != substream)
  return 0;


 if (push)
  snd_pcm_update_hw_ptr(substream);




 substream->runtime->hw_ptr_jiffies = jiffies - HZ * 1000;
 return substream->ops->trigger(substream,
           push ? SNDRV_PCM_TRIGGER_PAUSE_PUSH :
           SNDRV_PCM_TRIGGER_PAUSE_RELEASE);
}
