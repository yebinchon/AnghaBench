
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {int dummy; } ;


 int pcsp_sync_stop (struct snd_pcsp*) ;
 int pcspkr_stop_sound () ;

__attribute__((used)) static void pcsp_stop_beep(struct snd_pcsp *chip)
{
 pcsp_sync_stop(chip);
 pcspkr_stop_sound();
}
