
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EMU8000_HWCF4_WRITE (struct snd_emu8000*,int ) ;
 int EMU8000_HWCF5_WRITE (struct snd_emu8000*,int) ;
 int EMU8000_HWCF6_WRITE (struct snd_emu8000*,int) ;
 int init1 ;
 int init2 ;
 int init3 ;
 int init4 ;
 int msleep (int) ;
 int send_array (struct snd_emu8000*,int ,int) ;

__attribute__((used)) static void
init_arrays(struct snd_emu8000 *emu)
{
 send_array(emu, init1, ARRAY_SIZE(init1)/4);

 msleep((1024 * 1000) / 44100);
 send_array(emu, init2, ARRAY_SIZE(init2)/4);
 send_array(emu, init3, ARRAY_SIZE(init3)/4);

 EMU8000_HWCF4_WRITE(emu, 0);
 EMU8000_HWCF5_WRITE(emu, 0x83);
 EMU8000_HWCF6_WRITE(emu, 0x8000);

 send_array(emu, init4, ARRAY_SIZE(init4)/4);
}
