
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int dummy; } ;
struct snd_card {int dummy; } ;


 int snd_card_ro_proc_new (struct snd_card*,char*,struct snd_ymfpci*,int ) ;
 int snd_ymfpci_proc_read ;

__attribute__((used)) static int snd_ymfpci_proc_init(struct snd_card *card, struct snd_ymfpci *chip)
{
 return snd_card_ro_proc_new(card, "ymfpci", chip, snd_ymfpci_proc_read);
}
