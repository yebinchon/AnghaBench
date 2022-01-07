
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int shutdown_wait; int usage_count; int shutdown; } ;


 int EIO ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int snd_usb_autoresume (struct snd_usb_audio*) ;
 int wake_up (int *) ;

int snd_usb_lock_shutdown(struct snd_usb_audio *chip)
{
 int err;

 atomic_inc(&chip->usage_count);
 if (atomic_read(&chip->shutdown)) {
  err = -EIO;
  goto error;
 }
 err = snd_usb_autoresume(chip);
 if (err < 0)
  goto error;
 return 0;

 error:
 if (atomic_dec_and_test(&chip->usage_count))
  wake_up(&chip->shutdown_wait);
 return err;
}
