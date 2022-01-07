
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int info; } ;
struct snd_card {int controls_rwsem; } ;
typedef enum snd_ctl_add_mode { ____Placeholder_snd_ctl_add_mode } snd_ctl_add_mode ;


 int EINVAL ;
 int __snd_ctl_add_replace (struct snd_card*,struct snd_kcontrol*,int) ;
 int down_write (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_free_one (struct snd_kcontrol*) ;
 int up_write (int *) ;

__attribute__((used)) static int snd_ctl_add_replace(struct snd_card *card,
          struct snd_kcontrol *kcontrol,
          enum snd_ctl_add_mode mode)
{
 int err = -EINVAL;

 if (! kcontrol)
  return err;
 if (snd_BUG_ON(!card || !kcontrol->info))
  goto error;

 down_write(&card->controls_rwsem);
 err = __snd_ctl_add_replace(card, kcontrol, mode);
 up_write(&card->controls_rwsem);
 if (err < 0)
  goto error;
 return 0;

 error:
 snd_ctl_free_one(kcontrol);
 return err;
}
