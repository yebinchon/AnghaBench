
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int irq; struct snd_card* card; int mixer_mutex; struct snd_vx_ops* ops; int type; struct snd_vx_hardware* hw; int lock; } ;
struct snd_vx_ops {int dummy; } ;
struct snd_vx_hardware {char* name; int type; } ;
struct snd_card {int shortname; int driver; struct vx_core* private_data; } ;


 int GFP_KERNEL ;
 struct vx_core* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 int vx_proc_init (struct vx_core*) ;

struct vx_core *snd_vx_create(struct snd_card *card, struct snd_vx_hardware *hw,
         struct snd_vx_ops *ops,
         int extra_size)
{
 struct vx_core *chip;

 if (snd_BUG_ON(!card || !hw || !ops))
  return ((void*)0);

 chip = kzalloc(sizeof(*chip) + extra_size, GFP_KERNEL);
 if (! chip)
  return ((void*)0);
 mutex_init(&chip->lock);
 chip->irq = -1;
 chip->hw = hw;
 chip->type = hw->type;
 chip->ops = ops;
 mutex_init(&chip->mixer_mutex);

 chip->card = card;
 card->private_data = chip;
 strcpy(card->driver, hw->name);
 sprintf(card->shortname, "Digigram %s", hw->name);

 vx_proc_init(chip);

 return chip;
}
