
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned short*) ;
 int wm8766_spi_write (struct snd_ice1712*,unsigned short,unsigned short) ;

__attribute__((used)) static void wm8766_init(struct snd_ice1712 *ice)
{
 static unsigned short wm8766_inits[] = {
  128, 0x0000,
  140, 0x0120,
  137, 0x0022,
  139, 0x0001,
  138, 0x0080,
  136, 0x0100,
  135, 0x0100,
  134, 0x0100,
  131, 0x0100,
  130, 0x0100,
  129, 0x0100,
  133, 0x0000,
  132, 0x0000,
 };
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(wm8766_inits); i += 2)
  wm8766_spi_write(ice, wm8766_inits[i], wm8766_inits[i + 1]);
}
