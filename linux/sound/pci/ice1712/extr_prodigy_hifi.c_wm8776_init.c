
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned short*) ;





 int wm_put (struct snd_ice1712*,unsigned short,unsigned short) ;

__attribute__((used)) static void wm8776_init(struct snd_ice1712 *ice)
{
 static unsigned short wm8776_inits[] = {

  132, 0x0003,


  130, 0x0001,
  131, 0x0000,

  129, 0x0008,
  128, 0x0000,
 };
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(wm8776_inits); i += 2)
  wm_put(ice, wm8776_inits[i], wm8776_inits[i + 1]);
}
