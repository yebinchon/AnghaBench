
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {struct pci_dev* pci_m1533; } ;
struct pci_dev {int dummy; } ;


 int ALI_GLOBAL_CONTROL ;
 int ALI_REG (struct snd_ali*,int ) ;
 int ALI_SCTRL ;
 int ALI_SPDIF_CTRL ;
 int ALI_SPDIF_OUT_CHANNEL ;
 unsigned char ALI_SPDIF_OUT_CH_STATUS ;
 unsigned char ALI_SPDIF_OUT_ENABLE ;
 unsigned short ALI_SPDIF_OUT_SEL_PCM ;
 unsigned char inb (int ) ;
 unsigned short inw (int ) ;
 int outb (unsigned char,int ) ;
 int outw (unsigned short,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;
 int snd_ali_disable_special_channel (struct snd_ali*,int ) ;

__attribute__((used)) static void snd_ali_enable_spdif_out(struct snd_ali *codec)
{
 unsigned short wVal;
 unsigned char bVal;
        struct pci_dev *pci_dev;

        pci_dev = codec->pci_m1533;
        if (pci_dev == ((void*)0))
                return;
        pci_read_config_byte(pci_dev, 0x61, &bVal);
        bVal |= 0x40;
        pci_write_config_byte(pci_dev, 0x61, bVal);
        pci_read_config_byte(pci_dev, 0x7d, &bVal);
        bVal |= 0x01;
        pci_write_config_byte(pci_dev, 0x7d, bVal);

        pci_read_config_byte(pci_dev, 0x7e, &bVal);
        bVal &= (~0x20);
        bVal |= 0x10;
        pci_write_config_byte(pci_dev, 0x7e, bVal);

 bVal = inb(ALI_REG(codec, ALI_SCTRL));
 outb(bVal | ALI_SPDIF_OUT_ENABLE, ALI_REG(codec, ALI_SCTRL));

 bVal = inb(ALI_REG(codec, ALI_SPDIF_CTRL));
 outb(bVal & ALI_SPDIF_OUT_CH_STATUS, ALI_REG(codec, ALI_SPDIF_CTRL));

 wVal = inw(ALI_REG(codec, ALI_GLOBAL_CONTROL));
 wVal |= ALI_SPDIF_OUT_SEL_PCM;
 outw(wVal, ALI_REG(codec, ALI_GLOBAL_CONTROL));
 snd_ali_disable_special_channel(codec, ALI_SPDIF_OUT_CHANNEL);
}
