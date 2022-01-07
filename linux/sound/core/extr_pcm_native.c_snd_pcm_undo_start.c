
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* ops; TYPE_1__* runtime; } ;
struct TYPE_4__ {int (* trigger ) (struct snd_pcm_substream*,int ) ;} ;
struct TYPE_3__ {struct snd_pcm_substream* trigger_master; } ;


 int SNDRV_PCM_TRIGGER_STOP ;
 int stub1 (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static void snd_pcm_undo_start(struct snd_pcm_substream *substream, int state)
{
 if (substream->runtime->trigger_master == substream)
  substream->ops->trigger(substream, SNDRV_PCM_TRIGGER_STOP);
}
