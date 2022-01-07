
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct esschan {int running; int hwptr; int count; int bob_freq; } ;
struct es1968 {int substream_lock; } ;
struct TYPE_2__ {struct esschan* private_data; } ;






 int snd_es1968_bob_dec (struct es1968*) ;
 int snd_es1968_bob_inc (struct es1968*,int ) ;
 int snd_es1968_pcm_start (struct es1968*,struct esschan*) ;
 int snd_es1968_pcm_stop (struct es1968*,struct esschan*) ;
 struct es1968* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_es1968_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct es1968 *chip = snd_pcm_substream_chip(substream);
 struct esschan *es = substream->runtime->private_data;

 spin_lock(&chip->substream_lock);
 switch (cmd) {
 case 130:
 case 131:
  if (es->running)
   break;
  snd_es1968_bob_inc(chip, es->bob_freq);
  es->count = 0;
  es->hwptr = 0;
  snd_es1968_pcm_start(chip, es);
  es->running = 1;
  break;
 case 129:
 case 128:
  if (! es->running)
   break;
  snd_es1968_pcm_stop(chip, es);
  es->running = 0;
  snd_es1968_bob_dec(chip);
  break;
 }
 spin_unlock(&chip->substream_lock);
 return 0;
}
