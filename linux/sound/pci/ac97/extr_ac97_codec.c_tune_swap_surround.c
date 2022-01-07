
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ENOENT ;
 scalar_t__ snd_ac97_swap_ctl (struct snd_ac97*,char*,char*,char*) ;

__attribute__((used)) static int tune_swap_surround(struct snd_ac97 *ac97)
{
 if (snd_ac97_swap_ctl(ac97, "Master Playback", "Surround Playback", "Switch") ||
     snd_ac97_swap_ctl(ac97, "Master Playback", "Surround Playback", "Volume"))
  return -ENOENT;
 return 0;
}
