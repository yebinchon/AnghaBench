
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu10k1x_midi {scalar_t__ port; } ;
struct emu10k1x {int dummy; } ;


 int snd_emu10k1x_ptr_write (struct emu10k1x*,scalar_t__,int ,int) ;

__attribute__((used)) static inline void mpu401_write(struct emu10k1x *emu, struct emu10k1x_midi *mpu, int data, int idx)
{
 snd_emu10k1x_ptr_write(emu, mpu->port + idx, 0, data);
}
