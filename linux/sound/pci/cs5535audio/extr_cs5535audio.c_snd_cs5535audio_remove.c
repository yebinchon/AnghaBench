
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int olpc_quirks_cleanup () ;
 int pci_get_drvdata (struct pci_dev*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void snd_cs5535audio_remove(struct pci_dev *pci)
{
 olpc_quirks_cleanup();
 snd_card_free(pci_get_drvdata(pci));
}
