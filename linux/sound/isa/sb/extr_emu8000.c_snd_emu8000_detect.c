
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int port1; } ;


 int EMU8000_HWCF1_READ (struct snd_emu8000*) ;
 int EMU8000_HWCF1_WRITE (struct snd_emu8000*,int) ;
 int EMU8000_HWCF2_READ (struct snd_emu8000*) ;
 int EMU8000_HWCF2_WRITE (struct snd_emu8000*,int) ;
 int EMU8000_HWCF3_WRITE (struct snd_emu8000*,int) ;
 int ENODEV ;
 int snd_printdd (char*,int ) ;

__attribute__((used)) static int
snd_emu8000_detect(struct snd_emu8000 *emu)
{

 EMU8000_HWCF1_WRITE(emu, 0x0059);
 EMU8000_HWCF2_WRITE(emu, 0x0020);
 EMU8000_HWCF3_WRITE(emu, 0x0000);





 if ((EMU8000_HWCF1_READ(emu) & 0x007e) != 0x0058)
  return -ENODEV;
 if ((EMU8000_HWCF2_READ(emu) & 0x0003) != 0x0003)
  return -ENODEV;

 snd_printdd("EMU8000 [0x%lx]: Synth chip found\n",
                    emu->port1);
 return 0;
}
