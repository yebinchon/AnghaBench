
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {TYPE_1__* card_info; } ;
struct snd_card {struct snd_ice1712* private_data; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* chip_exit ) (struct snd_ice1712*) ;} ;


 struct snd_card* pci_get_drvdata (struct pci_dev*) ;
 int snd_card_free (struct snd_card*) ;
 int stub1 (struct snd_ice1712*) ;

__attribute__((used)) static void snd_ice1712_remove(struct pci_dev *pci)
{
 struct snd_card *card = pci_get_drvdata(pci);
 struct snd_ice1712 *ice = card->private_data;

 if (ice->card_info && ice->card_info->chip_exit)
  ice->card_info->chip_exit(ice);
 snd_card_free(card);
}
