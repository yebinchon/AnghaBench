
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {int timer; } ;


 int hrtimer_cancel (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int pcsp_pcm_tasklet ;
 int pcsp_stop_playing (struct snd_pcsp*) ;
 int tasklet_kill (int *) ;

void pcsp_sync_stop(struct snd_pcsp *chip)
{
 local_irq_disable();
 pcsp_stop_playing(chip);
 local_irq_enable();
 hrtimer_cancel(&chip->timer);
 tasklet_kill(&pcsp_pcm_tasklet);
}
