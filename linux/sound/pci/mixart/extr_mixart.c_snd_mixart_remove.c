
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_get_drvdata (struct pci_dev*) ;
 int snd_mixart_free (int ) ;

__attribute__((used)) static void snd_mixart_remove(struct pci_dev *pci)
{
 snd_mixart_free(pci_get_drvdata(pci));
}
