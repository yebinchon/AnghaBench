
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gain; } ;
struct snd_harmony {TYPE_1__ st; } ;


 int HARMONY_GAIN_DEFAULT ;
 int harmony_mute (struct snd_harmony*) ;
 int harmony_reset (struct snd_harmony*) ;
 int harmony_unmute (struct snd_harmony*) ;

__attribute__((used)) static void
snd_harmony_mixer_reset(struct snd_harmony *h)
{
 harmony_mute(h);
 harmony_reset(h);
 h->st.gain = HARMONY_GAIN_DEFAULT;
 harmony_unmute(h);
}
