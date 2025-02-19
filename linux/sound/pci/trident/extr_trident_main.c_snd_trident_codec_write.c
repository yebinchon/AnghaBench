
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {scalar_t__ device; int reg_lock; } ;
struct snd_ac97 {int num; struct snd_trident* private_data; } ;


 unsigned short DX_AC97_BUSY_WRITE ;
 unsigned int DX_ACR0_AC97_W ;
 int NX_AC97_BUSY_WRITE ;
 unsigned int NX_ACR1_AC97_W ;
 unsigned short SI_AC97_AUDIO_BUSY ;
 unsigned short SI_AC97_BUSY_WRITE ;
 unsigned int SI_AC97_SECONDARY ;
 unsigned int SI_AC97_WRITE ;
 scalar_t__ TRIDENT_DEVICE_ID_DX ;
 scalar_t__ TRIDENT_DEVICE_ID_NX ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int TRID_REG (struct snd_trident*,unsigned int) ;
 unsigned short inw (int ) ;
 int outl (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_trident_codec_write(struct snd_ac97 *ac97, unsigned short reg,
        unsigned short wdata)
{
 unsigned int address, data;
 unsigned short count = 0xffff;
 unsigned long flags;
 struct snd_trident *trident = ac97->private_data;

 data = ((unsigned long) wdata) << 16;

 spin_lock_irqsave(&trident->reg_lock, flags);
 if (trident->device == TRIDENT_DEVICE_ID_DX) {
  address = DX_ACR0_AC97_W;


  do {
   if ((inw(TRID_REG(trident, address)) & DX_AC97_BUSY_WRITE) == 0)
    break;
  } while (--count);

  data |= (DX_AC97_BUSY_WRITE | (reg & 0x000000ff));
 } else if (trident->device == TRIDENT_DEVICE_ID_NX) {
  address = NX_ACR1_AC97_W;


  do {
   if ((inw(TRID_REG(trident, address)) & NX_AC97_BUSY_WRITE) == 0)
    break;
  } while (--count);

  data |= (NX_AC97_BUSY_WRITE | (ac97->num << 8) | (reg & 0x000000ff));
 } else if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
  address = SI_AC97_WRITE;


  do {
   if ((inw(TRID_REG(trident, address)) & (SI_AC97_BUSY_WRITE)) == 0)
    break;
  } while (--count);

  data |= SI_AC97_BUSY_WRITE | SI_AC97_AUDIO_BUSY | (reg & 0x000000ff);
  if (ac97->num == 1)
   data |= SI_AC97_SECONDARY;
 } else {
  address = 0;
  count = 0;
 }

 if (count == 0) {
  spin_unlock_irqrestore(&trident->reg_lock, flags);
  return;
 }
 outl(data, TRID_REG(trident, address));
 spin_unlock_irqrestore(&trident->reg_lock, flags);
}
