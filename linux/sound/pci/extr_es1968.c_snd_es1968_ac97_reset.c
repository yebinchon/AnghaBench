
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1968 {unsigned long io_port; TYPE_1__* card; int pci; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int NEC_VERSA_SUBID1 ;
 unsigned int NEC_VERSA_SUBID2 ;
 int PCI_SUBSYSTEM_VENDOR_ID ;
 int dev_info (int ,char*) ;
 int inb (unsigned long) ;
 int inw (unsigned long) ;
 int msleep (int) ;
 int outb (int,unsigned long) ;
 int outw (unsigned short,unsigned long) ;
 int pci_read_config_dword (int ,int ,unsigned int*) ;
 int pci_read_config_word (int ,int,unsigned short*) ;
 int udelay (int) ;

__attribute__((used)) static void snd_es1968_ac97_reset(struct es1968 *chip)
{
 unsigned long ioaddr = chip->io_port;

 unsigned short save_ringbus_a;
 unsigned short save_68;
 unsigned short w;
 unsigned int vend;


 save_ringbus_a = inw(ioaddr + 0x36);



 outw(inw(ioaddr + 0x3a) & 0xfffc, ioaddr + 0x3a);
 outw(inw(ioaddr + 0x3c) & 0xfffc, ioaddr + 0x3c);


 outw(0x0000, ioaddr + 0x36);
 save_68 = inw(ioaddr + 0x68);
 pci_read_config_word(chip->pci, 0x58, &w);
 pci_read_config_dword(chip->pci, PCI_SUBSYSTEM_VENDOR_ID, &vend);
 if (w & 1)
  save_68 |= 0x10;
 outw(0xfffe, ioaddr + 0x64);
 outw(0x0001, ioaddr + 0x68);
 outw(0x0000, ioaddr + 0x60);
 udelay(20);
 outw(0x0001, ioaddr + 0x60);
 msleep(20);

 outw(save_68 | 0x1, ioaddr + 0x68);
 outw((inw(ioaddr + 0x38) & 0xfffc) | 0x1, ioaddr + 0x38);
 outw((inw(ioaddr + 0x3a) & 0xfffc) | 0x1, ioaddr + 0x3a);
 outw((inw(ioaddr + 0x3c) & 0xfffc) | 0x1, ioaddr + 0x3c);



 outw(0x0000, ioaddr + 0x36);
 outw(0xfff7, ioaddr + 0x64);
 save_68 = inw(ioaddr + 0x68);
 outw(0x0009, ioaddr + 0x68);
 outw(0x0001, ioaddr + 0x60);
 udelay(20);
 outw(0x0009, ioaddr + 0x60);
 msleep(500);

 outw(inw(ioaddr + 0x3a) & 0xfffc, ioaddr + 0x3a);
 outw(inw(ioaddr + 0x3c) & 0xfffc, ioaddr + 0x3c);
 if (vend == NEC_VERSA_SUBID1 || vend == NEC_VERSA_SUBID2) {

  outw(0xf9ff, ioaddr + 0x64);
  outw(inw(ioaddr + 0x68) | 0x600, ioaddr + 0x68);
  outw(0x0209, ioaddr + 0x60);
 }


 outw(save_ringbus_a, ioaddr + 0x36);




 outb(inb(ioaddr+0xc0)|(1<<5), ioaddr+0xc0);
 outb(0xff, ioaddr+0xc3);
 outb(0xff, ioaddr+0xc4);
 outb(0xff, ioaddr+0xc6);
 outb(0xff, ioaddr+0xc8);
 outb(0x3f, ioaddr+0xcf);
 outb(0x3f, ioaddr+0xd0);
}
