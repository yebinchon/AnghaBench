
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int snd_ali_disable_voice_irq (struct snd_ali*,unsigned int) ;
 int snd_ali_stop_voice (struct snd_ali*,unsigned int) ;

__attribute__((used)) static void snd_ali_clear_voices(struct snd_ali *codec,
     unsigned int v_min,
     unsigned int v_max)
{
 unsigned int i;

 for (i = v_min; i <= v_max; i++) {
  snd_ali_stop_voice(codec, i);
  snd_ali_disable_voice_irq(codec, i);
 }
}
