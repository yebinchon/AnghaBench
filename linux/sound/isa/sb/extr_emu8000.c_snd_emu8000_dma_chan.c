
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int dummy; } ;


 int EMU8000_CCCA_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_CPF_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_CSL_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_CVCF_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_DCYSUSV_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_PSST_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_PTRX_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_RAM_CLOSE ;
 int EMU8000_RAM_MODE_MASK ;
 int EMU8000_RAM_RIGHT ;
 int EMU8000_RAM_WRITE ;
 int EMU8000_VTFT_WRITE (struct snd_emu8000*,int,int ) ;

void
snd_emu8000_dma_chan(struct snd_emu8000 *emu, int ch, int mode)
{
 unsigned right_bit = (mode & EMU8000_RAM_RIGHT) ? 0x01000000 : 0;
 mode &= EMU8000_RAM_MODE_MASK;
 if (mode == EMU8000_RAM_CLOSE) {
  EMU8000_CCCA_WRITE(emu, ch, 0);
  EMU8000_DCYSUSV_WRITE(emu, ch, 0x807F);
  return;
 }
 EMU8000_DCYSUSV_WRITE(emu, ch, 0x80);
 EMU8000_VTFT_WRITE(emu, ch, 0);
 EMU8000_CVCF_WRITE(emu, ch, 0);
 EMU8000_PTRX_WRITE(emu, ch, 0x40000000);
 EMU8000_CPF_WRITE(emu, ch, 0x40000000);
 EMU8000_PSST_WRITE(emu, ch, 0);
 EMU8000_CSL_WRITE(emu, ch, 0);
 if (mode == EMU8000_RAM_WRITE)
  EMU8000_CCCA_WRITE(emu, ch, 0x06000000 | right_bit);
 else
  EMU8000_CCCA_WRITE(emu, ch, 0x04000000 | right_bit);
}
