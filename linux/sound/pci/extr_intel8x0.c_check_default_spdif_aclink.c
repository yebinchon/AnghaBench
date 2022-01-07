
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pci_quirk {int value; } ;
struct pci_dev {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 struct snd_pci_quirk* snd_pci_quirk_lookup (struct pci_dev*,int ) ;
 int snd_pci_quirk_name (struct snd_pci_quirk const*) ;
 int spdif_aclink_defaults ;

__attribute__((used)) static int check_default_spdif_aclink(struct pci_dev *pci)
{
 const struct snd_pci_quirk *w;

 w = snd_pci_quirk_lookup(pci, spdif_aclink_defaults);
 if (w) {
  if (w->value)
   dev_dbg(&pci->dev,
    "Using SPDIF over AC-Link for %s\n",
        snd_pci_quirk_name(w));
  else
   dev_dbg(&pci->dev,
    "Using integrated SPDIF DMA for %s\n",
        snd_pci_quirk_name(w));
  return w->value;
 }
 return 0;
}
