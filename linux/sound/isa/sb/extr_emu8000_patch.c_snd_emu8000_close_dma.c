
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int emu; } ;


 int EMU8000_DRAM_VOICES ;
 int EMU8000_RAM_CLOSE ;
 int snd_emu8000_dma_chan (struct snd_emu8000*,int,int ) ;
 int snd_emux_unlock_voice (int ,int) ;

__attribute__((used)) static void
snd_emu8000_close_dma(struct snd_emu8000 *emu)
{
 int i;

 for (i = 0; i < EMU8000_DRAM_VOICES; i++) {
  snd_emu8000_dma_chan(emu, i, EMU8000_RAM_CLOSE);
  snd_emux_unlock_voice(emu->emu, i);
 }
}
