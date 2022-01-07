
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int last_reg; } ;


 int EMU8000_DCYSUSV_WRITE (struct snd_emu8000*,int ,int) ;
 int EMU8000_DRAM_VOICES ;
 int EMU8000_HWCF1_WRITE (struct snd_emu8000*,int) ;
 int EMU8000_HWCF2_WRITE (struct snd_emu8000*,int) ;
 int EMU8000_HWCF3_WRITE (struct snd_emu8000*,int) ;
 int init_arrays (struct snd_emu8000*) ;
 int init_audio (struct snd_emu8000*) ;
 int init_dma (struct snd_emu8000*) ;
 int size_dram (struct snd_emu8000*) ;
 int snd_emu8000_init_fm (struct snd_emu8000*) ;
 int snd_emu8000_update_chorus_mode (struct snd_emu8000*) ;
 int snd_emu8000_update_equalizer (struct snd_emu8000*) ;
 int snd_emu8000_update_reverb_mode (struct snd_emu8000*) ;

__attribute__((used)) static void
snd_emu8000_init_hw(struct snd_emu8000 *emu)
{
 int i;

 emu->last_reg = 0xffff;


 EMU8000_HWCF1_WRITE(emu, 0x0059);
 EMU8000_HWCF2_WRITE(emu, 0x0020);


 EMU8000_HWCF3_WRITE(emu, 0);


 init_audio(emu);


 init_dma(emu);


 init_arrays(emu);





 snd_emu8000_init_fm(emu);


 for (i = 0; i < EMU8000_DRAM_VOICES; i++)
  EMU8000_DCYSUSV_WRITE(emu, 0, 0x807F);


 size_dram(emu);


 EMU8000_HWCF3_WRITE(emu, 0x4);


 snd_emu8000_update_equalizer(emu);
 snd_emu8000_update_chorus_mode(emu);
 snd_emu8000_update_reverb_mode(emu);
}
