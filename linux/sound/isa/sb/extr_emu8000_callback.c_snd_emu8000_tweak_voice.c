
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int dummy; } ;


 int EMU8000_ATKHLDV_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_ATKHLD_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_DCYSUS_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_ENVVAL_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_ENVVOL_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_FM2FRQ2_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_FMMOD_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_IFATN_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_IP_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_LFO1VAL_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_LFO2VAL_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_PEFE_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_TREMFRQ_WRITE (struct snd_emu8000*,int,int ) ;

__attribute__((used)) static void
snd_emu8000_tweak_voice(struct snd_emu8000 *emu, int i)
{

 EMU8000_ENVVOL_WRITE(emu, i, 0x8000);
 EMU8000_ENVVAL_WRITE(emu, i, 0x8000);
 EMU8000_DCYSUS_WRITE(emu, i, 0x7F7F);
 EMU8000_ATKHLDV_WRITE(emu, i, 0x7F7F);
 EMU8000_ATKHLD_WRITE(emu, i, 0x7F7F);
 EMU8000_PEFE_WRITE(emu, i, 0);
 EMU8000_LFO1VAL_WRITE(emu, i, 0x8000);
 EMU8000_LFO2VAL_WRITE(emu, i, 0x8000);
 EMU8000_IP_WRITE(emu, i, 0xE000);
 EMU8000_IFATN_WRITE(emu, i, 0xFF00);
 EMU8000_FMMOD_WRITE(emu, i, 0);
 EMU8000_TREMFRQ_WRITE(emu, i, 0);
 EMU8000_FM2FRQ2_WRITE(emu, i, 0);
}
