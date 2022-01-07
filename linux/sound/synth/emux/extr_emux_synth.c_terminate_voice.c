
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emux_voice {int state; int * block; int * zone; int * port; int * chan; scalar_t__ time; } ;
struct TYPE_2__ {int (* free_voice ) (struct snd_emux_voice*) ;int (* terminate ) (struct snd_emux_voice*) ;} ;
struct snd_emux {TYPE_1__ ops; int use_time; } ;


 int SNDRV_EMUX_ST_OFF ;
 int stub1 (struct snd_emux_voice*) ;
 int stub2 (struct snd_emux_voice*) ;

__attribute__((used)) static void
terminate_voice(struct snd_emux *emu, struct snd_emux_voice *vp, int free)
{
 emu->ops.terminate(vp);
 vp->time = emu->use_time++;
 vp->chan = ((void*)0);
 vp->port = ((void*)0);
 vp->zone = ((void*)0);
 vp->block = ((void*)0);
 vp->state = SNDRV_EMUX_ST_OFF;
 if (free && emu->ops.free_voice)
  emu->ops.free_voice(vp);
}
