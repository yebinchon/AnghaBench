
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct es1968 {unsigned long io_port; struct pci_dev* pci; } ;


 unsigned long ASSP_CONTROL_A ;
 unsigned long ASSP_CONTROL_B ;
 unsigned long ASSP_CONTROL_C ;
 int CHI_CONFB ;
 int DEBOUNCE ;
 int DMA_CLEAR ;
 int ESM_CONFIG_A ;
 int ESM_CONFIG_B ;
 int ESM_DDMA ;
 int ESM_LEGACY_AUDIO_CONTROL ;
 scalar_t__ ESM_RING_BUS_CONTR_A ;
 scalar_t__ ESM_RING_BUS_CONTR_B ;
 scalar_t__ ESM_RING_BUS_DEST ;
 int ESS_DISABLE_AUDIO ;
 int ESS_ENABLE_SERIAL_IRQ ;
 int GPIO_CONFB ;
 int HWV_CONFB ;
 int IDMA_CONFB ;
 int IDR2_CRAM_DATA ;
 int IDR7_WAVE_ROMRAM ;
 int IRQ_TO_ISA ;
 int MIDI_FIX ;
 int NR_APUS ;
 int NR_APU_REGS ;
 int PCI_TIMING ;
 int PIC_SNOOP1 ;
 int PIC_SNOOP2 ;
 int POST_WRITE ;
 int RINGB_EN_SPDIF ;
 int SAFEGUARD ;
 int SPDIF_CONFB ;
 int SUBTR_DECODE ;
 int SWAP_LR ;
 scalar_t__ WC_CONTROL ;
 scalar_t__ WC_DATA ;
 scalar_t__ WC_INDEX ;
 int apu_set_register (struct es1968*,int,int,int ) ;
 int inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int maestro_read (struct es1968*,int) ;
 int maestro_write (struct es1968*,int,int) ;
 int outb (int,unsigned long) ;
 int outl (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 int snd_es1968_ac97_reset (struct es1968*) ;
 int snd_es1968_reset (struct es1968*) ;
 int udelay (int) ;
 int wave_get_register (struct es1968*,int ) ;
 int wave_set_register (struct es1968*,int ,int) ;

__attribute__((used)) static void snd_es1968_chip_init(struct es1968 *chip)
{
 struct pci_dev *pci = chip->pci;
 int i;
 unsigned long iobase = chip->io_port;
 u16 w;
 u32 n;
 pci_read_config_word(pci, ESM_CONFIG_A, &w);

 w &= ~DMA_CLEAR;
 w &= ~(PIC_SNOOP1 | PIC_SNOOP2);
 w &= ~SAFEGUARD;
 w |= POST_WRITE;
 w |= PCI_TIMING;

 w &= ~SWAP_LR;


 w &= ~SUBTR_DECODE;

 pci_write_config_word(pci, ESM_CONFIG_A, w);



 pci_read_config_word(pci, ESM_CONFIG_B, &w);

 w &= ~(1 << 15);

 w &= ~(1 << 14);

 w &= ~SPDIF_CONFB;
 w |= HWV_CONFB;
 w |= DEBOUNCE;
 w &= ~GPIO_CONFB;
 w |= CHI_CONFB;
 w &= ~IDMA_CONFB;
 w &= ~MIDI_FIX;
 w &= ~(1 << 1);
 w &= ~IRQ_TO_ISA;

 pci_write_config_word(pci, ESM_CONFIG_B, w);



 pci_read_config_word(pci, ESM_DDMA, &w);
 w &= ~(1 << 0);
 pci_write_config_word(pci, ESM_DDMA, w);





 pci_read_config_word(pci, ESM_LEGACY_AUDIO_CONTROL, &w);

 w |= ESS_DISABLE_AUDIO;
 w &= ~ESS_ENABLE_SERIAL_IRQ;
 w &= ~(0x1f);

 pci_write_config_word(pci, ESM_LEGACY_AUDIO_CONTROL, w);


 pci_read_config_word(pci, 0x58, &w);
 w|=1<<2;
 w|=1<<3;
 w&=~(1<<11);
 pci_write_config_word(pci, 0x58, w);



 snd_es1968_reset(chip);






 outw(0xC090, iobase + ESM_RING_BUS_DEST);
 udelay(20);
 outw(0x3000, iobase + ESM_RING_BUS_CONTR_A);
 udelay(20);





 snd_es1968_ac97_reset(chip);



 n = inl(iobase + ESM_RING_BUS_CONTR_B);
 n &= ~RINGB_EN_SPDIF;

 outl(n, iobase + ESM_RING_BUS_CONTR_B);



 outb(0x88, iobase+0x1c);
 outb(0x88, iobase+0x1d);
 outb(0x88, iobase+0x1e);
 outb(0x88, iobase+0x1f);




 outb(0, iobase + ASSP_CONTROL_B);
 outb(3, iobase + ASSP_CONTROL_A);
 outb(0, iobase + ASSP_CONTROL_C);




 for (i = 0; i < 16; i++) {

  outw(0x01E0 + i, iobase + WC_INDEX);
  outw(0x0000, iobase + WC_DATA);



  outw(0x01D0 + i, iobase + WC_INDEX);
  outw(0x0000, iobase + WC_DATA);
 }
 wave_set_register(chip, IDR7_WAVE_ROMRAM,
     (wave_get_register(chip, IDR7_WAVE_ROMRAM) & 0xFF00));
 wave_set_register(chip, IDR7_WAVE_ROMRAM,
     wave_get_register(chip, IDR7_WAVE_ROMRAM) | 0x100);
 wave_set_register(chip, IDR7_WAVE_ROMRAM,
     wave_get_register(chip, IDR7_WAVE_ROMRAM) & ~0x200);
 wave_set_register(chip, IDR7_WAVE_ROMRAM,
     wave_get_register(chip, IDR7_WAVE_ROMRAM) | ~0x400);


 maestro_write(chip, IDR2_CRAM_DATA, 0x0000);


 maestro_write(chip, 0x08, 0xB004);
 maestro_write(chip, 0x09, 0x001B);
 maestro_write(chip, 0x0A, 0x8000);
 maestro_write(chip, 0x0B, 0x3F37);
 maestro_write(chip, 0x0C, 0x0098);


 maestro_write(chip, 0x0C,
        (maestro_read(chip, 0x0C) & ~0xF000) | 0x8000);

 maestro_write(chip, 0x0C,
        (maestro_read(chip, 0x0C) & ~0x0F00) | 0x0500);

 maestro_write(chip, 0x0D, 0x7632);




 w = inw(iobase + WC_CONTROL);

 w &= ~0xFA00;
 w |= 0xA000;
 w &= ~0x0200;

 w |= 0x0100;
 w |= 0x0080;
 w &= ~0x0060;
 w |= 0x0020;

 w &= ~0x000C;

 w &= ~0x0001;

 outw(w, iobase + WC_CONTROL);


 for (i = 0; i < NR_APUS; i++) {
  for (w = 0; w < NR_APU_REGS; w++)
   apu_set_register(chip, i, w, 0);

 }
}
