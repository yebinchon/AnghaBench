
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int entries_dmaaddr; int * entries; } ;
struct snd_trident {int ac97_ctrl; unsigned int spdif_bits; int spdif_ctrl; TYPE_2__ tlb; TYPE_1__* card; struct pci_dev* pci; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int HZ ;
 scalar_t__ NX_ACR0_AC97_COM_STAT ;
 unsigned int NX_SB_IRQ_DISABLE ;
 scalar_t__ NX_SPCSTATUS ;
 scalar_t__ NX_SPCTRL_SPCSO ;
 scalar_t__ NX_TLBC ;
 scalar_t__ T4D_MISCINT ;
 int TRID_REG (struct snd_trident*,scalar_t__) ;
 int dev_err (int ,char*,int) ;
 int do_delay (struct snd_trident*) ;
 int inl (int ) ;
 int jiffies ;
 int outb (int ,int ) ;
 int outl (unsigned int,int ) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;
 int snd_trident_stop_all_voices (struct snd_trident*) ;
 scalar_t__ time_after_eq (unsigned long,int) ;
 int udelay (int) ;

__attribute__((used)) static int snd_trident_4d_nx_init(struct snd_trident *trident)
{
 struct pci_dev *pci = trident->pci;
 unsigned long end_time;


 pci_write_config_dword(pci, 0x40, 0);
 pci_write_config_byte(pci, 0x44, 0);
 pci_write_config_byte(pci, 0x45, 0);

 pci_write_config_byte(pci, 0x46, 1);
 udelay(100);
 pci_write_config_byte(pci, 0x46, 0);
 udelay(100);


 outl(0x00000001, TRID_REG(trident, NX_ACR0_AC97_COM_STAT));
 udelay(100);
 outl(0x00000000, TRID_REG(trident, NX_ACR0_AC97_COM_STAT));

 end_time = (jiffies + (HZ * 3) / 4) + 1;
 do {
  if ((inl(TRID_REG(trident, NX_ACR0_AC97_COM_STAT)) & 0x0008) != 0)
   goto __nx_ok;
  do_delay(trident);
 } while (time_after_eq(end_time, jiffies));
 dev_err(trident->card->dev, "AC'97 codec ready error [0x%x]\n",
  inl(TRID_REG(trident, NX_ACR0_AC97_COM_STAT)));
 return -EIO;

 __nx_ok:

 trident->ac97_ctrl = 0x00000002;
 outl(trident->ac97_ctrl, TRID_REG(trident, NX_ACR0_AC97_COM_STAT));

 outl(NX_SB_IRQ_DISABLE, TRID_REG(trident, T4D_MISCINT));

 snd_trident_stop_all_voices(trident);

 if (trident->tlb.entries != ((void*)0)) {
  unsigned int i;

  i = trident->tlb.entries_dmaaddr;
  i |= 0x00000001;
  outl(i, TRID_REG(trident, NX_TLBC));
 } else {
  outl(0, TRID_REG(trident, NX_TLBC));
 }

 outl(trident->spdif_bits, TRID_REG(trident, NX_SPCSTATUS));
 outb(trident->spdif_ctrl, TRID_REG(trident, NX_SPCTRL_SPCSO + 3));

 return 0;
}
