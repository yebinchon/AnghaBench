
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int dummy; } ;


 int EMU8000_SMALR_WRITE (struct snd_emu8000*,int ) ;
 int EMU8000_SMALW_WRITE (struct snd_emu8000*,int ) ;
 int EMU8000_SMARR_WRITE (struct snd_emu8000*,int ) ;
 int EMU8000_SMARW_WRITE (struct snd_emu8000*,int ) ;

__attribute__((used)) static void
init_dma(struct snd_emu8000 *emu)
{
 EMU8000_SMALR_WRITE(emu, 0);
 EMU8000_SMARR_WRITE(emu, 0);
 EMU8000_SMALW_WRITE(emu, 0);
 EMU8000_SMARW_WRITE(emu, 0);
}
