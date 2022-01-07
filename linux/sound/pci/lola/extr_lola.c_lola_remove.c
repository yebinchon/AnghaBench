
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_get_drvdata (struct pci_dev*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void lola_remove(struct pci_dev *pci)
{
 snd_card_free(pci_get_drvdata(pci));
}
