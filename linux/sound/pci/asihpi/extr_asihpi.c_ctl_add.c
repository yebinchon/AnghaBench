
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol_new {int index; int name; } ;
struct snd_card_asihpi {TYPE_1__* pci; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int ,int ) ;
 scalar_t__ mixer_dump ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_card_asihpi*) ;

__attribute__((used)) static inline int ctl_add(struct snd_card *card, struct snd_kcontrol_new *ctl,
    struct snd_card_asihpi *asihpi)
{
 int err;

 err = snd_ctl_add(card, snd_ctl_new1(ctl, asihpi));
 if (err < 0)
  return err;
 else if (mixer_dump)
  dev_info(&asihpi->pci->dev, "added %s(%d)\n", ctl->name, ctl->index);

 return 0;
}
