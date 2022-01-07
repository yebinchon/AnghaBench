
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {int voices; int running; } ;
struct TYPE_2__ {struct snd_emu8k_pcm* private_data; } ;


 int EINVAL ;


 int start_voice (struct snd_emu8k_pcm*,int) ;
 int stop_voice (struct snd_emu8k_pcm*,int) ;

__attribute__((used)) static int emu8k_pcm_trigger(struct snd_pcm_substream *subs, int cmd)
{
 struct snd_emu8k_pcm *rec = subs->runtime->private_data;
 int ch;

 switch (cmd) {
 case 129:
  for (ch = 0; ch < rec->voices; ch++)
   start_voice(rec, ch);
  rec->running = 1;
  break;
 case 128:
  rec->running = 0;
  for (ch = 0; ch < rec->voices; ch++)
   stop_voice(rec, ch);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
