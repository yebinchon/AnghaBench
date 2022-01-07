
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int dummy; } ;


 int EMU8000_INIT1_WRITE (struct snd_emu8000*,int,unsigned short) ;
 int EMU8000_INIT2_WRITE (struct snd_emu8000*,int,unsigned short) ;
 int EMU8000_INIT3_WRITE (struct snd_emu8000*,int,unsigned short) ;
 int EMU8000_INIT4_WRITE (struct snd_emu8000*,int,unsigned short) ;

__attribute__((used)) static void
send_array(struct snd_emu8000 *emu, unsigned short *data, int size)
{
 int i;
 unsigned short *p;

 p = data;
 for (i = 0; i < size; i++, p++)
  EMU8000_INIT1_WRITE(emu, i, *p);
 for (i = 0; i < size; i++, p++)
  EMU8000_INIT2_WRITE(emu, i, *p);
 for (i = 0; i < size; i++, p++)
  EMU8000_INIT3_WRITE(emu, i, *p);
 for (i = 0; i < size; i++, p++)
  EMU8000_INIT4_WRITE(emu, i, *p);
}
