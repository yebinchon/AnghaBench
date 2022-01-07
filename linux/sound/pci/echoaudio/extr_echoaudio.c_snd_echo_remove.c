
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct echoaudio {int card; } ;


 struct echoaudio* pci_get_drvdata (struct pci_dev*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void snd_echo_remove(struct pci_dev *pci)
{
 struct echoaudio *chip;

 chip = pci_get_drvdata(pci);
 if (chip)
  snd_card_free(chip->card);
}
