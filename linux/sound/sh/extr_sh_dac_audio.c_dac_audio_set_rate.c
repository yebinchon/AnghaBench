
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {int wakeups_per_second; int rate; } ;



__attribute__((used)) static void dac_audio_set_rate(struct snd_sh_dac *chip)
{
 chip->wakeups_per_second = 1000000000 / chip->rate;
}
