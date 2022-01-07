
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu10k1x_midi {scalar_t__ port; } ;
struct emu10k1x {int dummy; } ;


 scalar_t__ snd_emu10k1x_ptr_read (struct emu10k1x*,scalar_t__,int ) ;

__attribute__((used)) static inline unsigned char mpu401_read(struct emu10k1x *emu, struct emu10k1x_midi *mpu, int idx)
{
 return (unsigned char)snd_emu10k1x_ptr_read(emu, mpu->port + idx, 0);
}
