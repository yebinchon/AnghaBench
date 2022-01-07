
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int emu_lock; scalar_t__ port; } ;
struct firmware {int size; int* data; } ;


 scalar_t__ A_IOCFG ;
 int EIO ;
 unsigned int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int snd_emu1010_load_firmware_entry(struct snd_emu10k1 *emu,
         const struct firmware *fw_entry)
{
 int n, i;
 int reg;
 int value;
 unsigned int write_post;
 unsigned long flags;

 if (!fw_entry)
  return -EIO;







 spin_lock_irqsave(&emu->emu_lock, flags);
 outl(0x00, emu->port + A_IOCFG);
 write_post = inl(emu->port + A_IOCFG);
 udelay(100);
 outl(0x80, emu->port + A_IOCFG);
 write_post = inl(emu->port + A_IOCFG);
 udelay(100);
 for (n = 0; n < fw_entry->size; n++) {
  value = fw_entry->data[n];
  for (i = 0; i < 8; i++) {
   reg = 0x80;
   if (value & 0x1)
    reg = reg | 0x20;
   value = value >> 1;
   outl(reg, emu->port + A_IOCFG);
   write_post = inl(emu->port + A_IOCFG);
   outl(reg | 0x40, emu->port + A_IOCFG);
   write_post = inl(emu->port + A_IOCFG);
  }
 }

 outl(0x10, emu->port + A_IOCFG);
 write_post = inl(emu->port + A_IOCFG);
 spin_unlock_irqrestore(&emu->emu_lock, flags);

 return 0;
}
