
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {int dummy; } ;
struct TYPE_2__ {struct snd_emu8k_pcm* private_data; } ;


 int kfree (struct snd_emu8k_pcm*) ;

__attribute__((used)) static int emu8k_pcm_close(struct snd_pcm_substream *subs)
{
 struct snd_emu8k_pcm *rec = subs->runtime->private_data;
 kfree(rec);
 subs->runtime->private_data = ((void*)0);
 return 0;
}
