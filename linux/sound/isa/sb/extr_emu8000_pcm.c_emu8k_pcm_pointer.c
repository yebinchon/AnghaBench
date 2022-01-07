
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {scalar_t__ running; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {struct snd_emu8k_pcm* private_data; } ;


 int emu8k_get_curpos (struct snd_emu8k_pcm*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t emu8k_pcm_pointer(struct snd_pcm_substream *subs)
{
 struct snd_emu8k_pcm *rec = subs->runtime->private_data;
 if (rec->running)
  return emu8k_get_curpos(rec, 0);
 return 0;
}
