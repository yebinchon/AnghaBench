
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {scalar_t__* controls; int control_lock; } ;
struct snd_card {int controls_rwsem; } ;


 int EINVAL ;
 int EMU8000_NUM_CONTROLS ;
 int down_write (int *) ;
 int memset (scalar_t__*,int ,int) ;
 int * mixer_defs ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,scalar_t__) ;
 scalar_t__ snd_ctl_new1 (int ,struct snd_emu8000*) ;
 int snd_ctl_remove (struct snd_card*,scalar_t__) ;
 int spin_lock_init (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int
snd_emu8000_create_mixer(struct snd_card *card, struct snd_emu8000 *emu)
{
 int i, err = 0;

 if (snd_BUG_ON(!emu || !card))
  return -EINVAL;

 spin_lock_init(&emu->control_lock);

 memset(emu->controls, 0, sizeof(emu->controls));
 for (i = 0; i < EMU8000_NUM_CONTROLS; i++) {
  if ((err = snd_ctl_add(card, emu->controls[i] = snd_ctl_new1(mixer_defs[i], emu))) < 0)
   goto __error;
 }
 return 0;

__error:
 for (i = 0; i < EMU8000_NUM_CONTROLS; i++) {
  down_write(&card->controls_rwsem);
  if (emu->controls[i])
   snd_ctl_remove(card, emu->controls[i]);
  up_write(&card->controls_rwsem);
 }
 return err;
}
