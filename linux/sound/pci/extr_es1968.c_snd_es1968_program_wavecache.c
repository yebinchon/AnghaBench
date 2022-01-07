
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esschan {int fmt; int* apu; int* wc_map; } ;
struct es1968 {int dummy; } ;


 int ESS_FMT_16BIT ;
 int ESS_FMT_STEREO ;
 int wave_set_register (struct es1968*,int,int) ;

__attribute__((used)) static void snd_es1968_program_wavecache(struct es1968 *chip, struct esschan *es,
      int channel, u32 addr, int capture)
{
 u32 tmpval = (addr - 0x10) & 0xFFF8;

 if (! capture) {
  if (!(es->fmt & ESS_FMT_16BIT))
   tmpval |= 4;
  if (es->fmt & ESS_FMT_STEREO)
   tmpval |= 2;
 }


 wave_set_register(chip, es->apu[channel] << 3, tmpval);




}
