
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu10k1x {int midi; } ;


 int do_emu10k1x_midi_interrupt (struct emu10k1x*,int *,unsigned int) ;

__attribute__((used)) static void snd_emu10k1x_midi_interrupt(struct emu10k1x *emu, unsigned int status)
{
 do_emu10k1x_midi_interrupt(emu, &emu->midi, status);
}
