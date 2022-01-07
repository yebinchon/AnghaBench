
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_trident {int ac97_ctrl; TYPE_1__* card; struct pci_dev* pci; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DX_ACR2_AC97_COM_STAT ;
 int EIO ;
 int HZ ;
 int TRID_REG (struct snd_trident*,int ) ;
 int dev_err (int ,char*) ;
 int do_delay (struct snd_trident*) ;
 int inl (int ) ;
 int jiffies ;
 int outl (int,int ) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;
 int snd_trident_stop_all_voices (struct snd_trident*) ;
 scalar_t__ time_after_eq (unsigned long,int) ;
 int udelay (int) ;

__attribute__((used)) static int snd_trident_4d_dx_init(struct snd_trident *trident)
{
 struct pci_dev *pci = trident->pci;
 unsigned long end_time;


 pci_write_config_dword(pci, 0x40, 0);
 pci_write_config_byte(pci, 0x44, 0);
 pci_write_config_byte(pci, 0x45, 0);
 pci_write_config_byte(pci, 0x46, 4);
 udelay(100);
 pci_write_config_byte(pci, 0x46, 0);
 udelay(100);


 outl(0x00000001, TRID_REG(trident, DX_ACR2_AC97_COM_STAT));
 udelay(100);
 outl(0x00000000, TRID_REG(trident, DX_ACR2_AC97_COM_STAT));

 trident->ac97_ctrl = 0x0000004a;
 outl(trident->ac97_ctrl, TRID_REG(trident, DX_ACR2_AC97_COM_STAT));

 end_time = (jiffies + (HZ * 3) / 4) + 1;
 do {
  if ((inl(TRID_REG(trident, DX_ACR2_AC97_COM_STAT)) & 0x0010) != 0)
   goto __dx_ok;
  do_delay(trident);
 } while (time_after_eq(end_time, jiffies));
 dev_err(trident->card->dev, "AC'97 codec ready error\n");
 return -EIO;

 __dx_ok:
 snd_trident_stop_all_voices(trident);

 return 0;
}
