
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int put; } ;
struct snd_ac97 {int scaps; } ;


 int AC97_PD_EAPD ;
 int AC97_POWERDOWN ;
 int AC97_SCAP_EAPD_LED ;
 int ENOENT ;
 struct snd_kcontrol* ctl_find (struct snd_ac97*,char*,int *) ;
 int master_mute_sw_put ;
 int snd_ac97_remove_ctl (struct snd_ac97*,char*,int *) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int ,int ) ;

__attribute__((used)) static int tune_mute_led(struct snd_ac97 *ac97)
{
 struct snd_kcontrol *msw = ctl_find(ac97, "Master Playback Switch", ((void*)0));
 if (! msw)
  return -ENOENT;
 msw->put = master_mute_sw_put;
 snd_ac97_remove_ctl(ac97, "External Amplifier", ((void*)0));
 snd_ac97_update_bits(
  ac97, AC97_POWERDOWN,
  AC97_PD_EAPD, AC97_PD_EAPD
 );
 ac97->scaps |= AC97_SCAP_EAPD_LED;
 return 0;
}
