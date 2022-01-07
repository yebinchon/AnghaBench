
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {int wakeups_per_second; int hrtimer; } ;


 int HRTIMER_MODE_REL ;
 int hrtimer_start (int *,int ,int ) ;

__attribute__((used)) static void dac_audio_start_timer(struct snd_sh_dac *chip)
{
 hrtimer_start(&chip->hrtimer, chip->wakeups_per_second,
        HRTIMER_MODE_REL);
}
