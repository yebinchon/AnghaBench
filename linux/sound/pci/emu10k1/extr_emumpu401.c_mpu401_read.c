
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_midi {scalar_t__ port; } ;
struct snd_emu10k1 {scalar_t__ port; scalar_t__ audigy; } ;


 unsigned char inb (scalar_t__) ;
 scalar_t__ snd_emu10k1_ptr_read (struct snd_emu10k1*,scalar_t__,int ) ;

__attribute__((used)) static inline unsigned char mpu401_read(struct snd_emu10k1 *emu,
     struct snd_emu10k1_midi *mpu, int idx)
{
 if (emu->audigy)
  return (unsigned char)snd_emu10k1_ptr_read(emu, mpu->port + idx, 0);
 else
  return inb(emu->port + mpu->port + idx);
}
