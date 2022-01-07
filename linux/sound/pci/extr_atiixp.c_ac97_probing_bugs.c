
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pci_quirk {int value; } ;
struct pci_dev {int dev; } ;


 int atiixp_quirks ;
 int dev_dbg (int *,char*,int ,int) ;
 struct snd_pci_quirk* snd_pci_quirk_lookup (struct pci_dev*,int ) ;
 int snd_pci_quirk_name (struct snd_pci_quirk const*) ;

__attribute__((used)) static int ac97_probing_bugs(struct pci_dev *pci)
{
 const struct snd_pci_quirk *q;

 q = snd_pci_quirk_lookup(pci, atiixp_quirks);
 if (q) {
  dev_dbg(&pci->dev, "atiixp quirk for %s.  Forcing codec %d\n",
   snd_pci_quirk_name(q), q->value);
  return q->value;
 }

 return -1;
}
