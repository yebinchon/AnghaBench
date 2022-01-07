
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card_als4000 {int pci; int iobase; } ;
struct snd_card {struct snd_card_als4000* private_data; } ;


 int ALS4K_GCR8C_MISC_CTRL ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_als4000_free_gameport (struct snd_card_als4000*) ;
 int snd_als4k_gcr_write_addr (int ,int ,int ) ;

__attribute__((used)) static void snd_card_als4000_free( struct snd_card *card )
{
 struct snd_card_als4000 *acard = card->private_data;


 snd_als4k_gcr_write_addr(acard->iobase, ALS4K_GCR8C_MISC_CTRL, 0);

 snd_als4000_free_gameport(acard);
 pci_release_regions(acard->pci);
 pci_disable_device(acard->pci);
}
