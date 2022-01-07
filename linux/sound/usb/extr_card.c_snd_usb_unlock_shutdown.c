
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int shutdown_wait; int usage_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int snd_usb_autosuspend (struct snd_usb_audio*) ;
 int wake_up (int *) ;

void snd_usb_unlock_shutdown(struct snd_usb_audio *chip)
{
 snd_usb_autosuspend(chip);
 if (atomic_dec_and_test(&chip->usage_count))
  wake_up(&chip->shutdown_wait);
}
