
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int dummy; } ;


 int EMU8000_SMALW_WRITE (struct snd_emu8000*,int) ;
 int EMU8000_SMLD_WRITE (struct snd_emu8000*,unsigned short) ;
 int emu8000_reset_addr ;
 int snd_emu8000_write_wait (struct snd_emu8000*) ;

__attribute__((used)) static inline void
write_word(struct snd_emu8000 *emu, int *offset, unsigned short data)
{
 if (emu8000_reset_addr) {
  if (emu8000_reset_addr > 1)
   snd_emu8000_write_wait(emu);
  EMU8000_SMALW_WRITE(emu, *offset);
 }
 EMU8000_SMLD_WRITE(emu, data);
 *offset += 1;
}
