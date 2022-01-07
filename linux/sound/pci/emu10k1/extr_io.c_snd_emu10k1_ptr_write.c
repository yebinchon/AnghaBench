
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int emu_lock; scalar_t__ port; scalar_t__ audigy; } ;


 unsigned int A_PTR_ADDRESS_MASK ;
 scalar_t__ DATA ;
 scalar_t__ PTR ;
 unsigned int PTR_ADDRESS_MASK ;
 unsigned int PTR_CHANNELNUM_MASK ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_emu10k1_ptr_write(struct snd_emu10k1 *emu, unsigned int reg, unsigned int chn, unsigned int data)
{
 unsigned int regptr;
 unsigned long flags;
 unsigned int mask;

 if (snd_BUG_ON(!emu))
  return;
 mask = emu->audigy ? A_PTR_ADDRESS_MASK : PTR_ADDRESS_MASK;
 regptr = ((reg << 16) & mask) | (chn & PTR_CHANNELNUM_MASK);

 if (reg & 0xff000000) {
  unsigned char size, offset;

  size = (reg >> 24) & 0x3f;
  offset = (reg >> 16) & 0x1f;
  mask = ((1 << size) - 1) << offset;
  data = (data << offset) & mask;

  spin_lock_irqsave(&emu->emu_lock, flags);
  outl(regptr, emu->port + PTR);
  data |= inl(emu->port + DATA) & ~mask;
  outl(data, emu->port + DATA);
  spin_unlock_irqrestore(&emu->emu_lock, flags);
 } else {
  spin_lock_irqsave(&emu->emu_lock, flags);
  outl(regptr, emu->port + PTR);
  outl(data, emu->port + DATA);
  spin_unlock_irqrestore(&emu->emu_lock, flags);
 }
}
