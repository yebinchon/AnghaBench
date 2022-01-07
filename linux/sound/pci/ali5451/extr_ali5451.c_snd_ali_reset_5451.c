
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {struct pci_dev* pci; struct pci_dev* pci_m1533; } ;
struct pci_dev {int dummy; } ;


 int AC97_POWERDOWN ;
 int mdelay (int) ;
 int pci_read_config_dword (struct pci_dev*,int,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,int,unsigned int) ;
 unsigned short snd_ali_codec_peek (struct snd_ali*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int snd_ali_reset_5451(struct snd_ali *codec)
{
 struct pci_dev *pci_dev;
 unsigned short wCount, wReg;
 unsigned int dwVal;

 pci_dev = codec->pci_m1533;
 if (pci_dev) {
  pci_read_config_dword(pci_dev, 0x7c, &dwVal);
  pci_write_config_dword(pci_dev, 0x7c, dwVal | 0x08000000);
  mdelay(5);
  pci_read_config_dword(pci_dev, 0x7c, &dwVal);
  pci_write_config_dword(pci_dev, 0x7c, dwVal & 0xf7ffffff);
  mdelay(5);
 }

 pci_dev = codec->pci;
 pci_read_config_dword(pci_dev, 0x44, &dwVal);
 pci_write_config_dword(pci_dev, 0x44, dwVal | 0x000c0000);
 udelay(500);
 pci_read_config_dword(pci_dev, 0x44, &dwVal);
 pci_write_config_dword(pci_dev, 0x44, dwVal & 0xfffbffff);
 mdelay(5);

 wCount = 200;
 while(wCount--) {
  wReg = snd_ali_codec_peek(codec, 0, AC97_POWERDOWN);
  if ((wReg & 0x000f) == 0x000f)
   return 0;
  mdelay(5);
 }



 return 0;
}
