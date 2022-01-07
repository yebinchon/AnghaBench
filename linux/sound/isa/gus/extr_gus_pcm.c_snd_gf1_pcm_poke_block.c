
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int reg_lock; scalar_t__ interwave; } ;


 int DRAM ;
 int EAGAIN ;
 int GF1DATALOW ;
 int GF1REGSEL ;
 int GUSP (struct snd_gus_card*,int ) ;
 int SNDRV_GF1_GB_MEMORY_CONTROL ;
 int SNDRV_GF1_GW_DRAM_IO16 ;
 int current ;
 int in_interrupt () ;
 int outb (int ,int ) ;
 int outsb (int ,unsigned char*,unsigned int) ;
 int outsw (int ,unsigned char*,unsigned int) ;
 int schedule_timeout_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;
 int snd_gf1_dram_addr (struct snd_gus_card*,unsigned int) ;
 int snd_gf1_poke (struct snd_gus_card*,int ,int) ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_gf1_pcm_poke_block(struct snd_gus_card *gus, unsigned char *buf,
      unsigned int pos, unsigned int count,
      int w16, int invert)
{
 unsigned int len;
 unsigned long flags;






 while (count > 0) {
  len = count;
  if (len > 512)
   len = 512;
  count -= len;
  if (gus->interwave) {
   spin_lock_irqsave(&gus->reg_lock, flags);
   snd_gf1_write8(gus, SNDRV_GF1_GB_MEMORY_CONTROL, 0x01 | (invert ? 0x08 : 0x00));
   snd_gf1_dram_addr(gus, pos);
   if (w16) {
    outb(SNDRV_GF1_GW_DRAM_IO16, GUSP(gus, GF1REGSEL));
    outsw(GUSP(gus, GF1DATALOW), buf, len >> 1);
   } else {
    outsb(GUSP(gus, DRAM), buf, len);
   }
   spin_unlock_irqrestore(&gus->reg_lock, flags);
   buf += 512;
   pos += 512;
  } else {
   invert = invert ? 0x80 : 0x00;
   if (w16) {
    len >>= 1;
    while (len--) {
     snd_gf1_poke(gus, pos++, *buf++);
     snd_gf1_poke(gus, pos++, *buf++ ^ invert);
    }
   } else {
    while (len--)
     snd_gf1_poke(gus, pos++, *buf++ ^ invert);
   }
  }
  if (count > 0 && !in_interrupt()) {
   schedule_timeout_interruptible(1);
   if (signal_pending(current))
    return -EAGAIN;
  }
 }
 return 0;
}
