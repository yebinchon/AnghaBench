
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; TYPE_1__ eeprom; } ;


 unsigned int ARRAY_SIZE (unsigned short const*) ;
 scalar_t__ VT1724_SUBDEVICE_AV710 ;




 int wm_put (struct snd_ice1712*,unsigned short const,unsigned short const) ;

__attribute__((used)) static int snd_vt1724_amp_init(struct snd_ice1712 *ice)
{
 static const unsigned short wm_inits[] = {
  131, 0x0000,
  130, 0x0000,
  129, 0x0008,
  128, 0x0001,
 };

 unsigned int i;




 ice->num_total_dacs = 6;
 ice->num_total_adcs = 2;




 if (ice->eeprom.subvendor == VT1724_SUBDEVICE_AV710) {
  for (i = 0; i < ARRAY_SIZE(wm_inits); i += 2)
   wm_put(ice, wm_inits[i], wm_inits[i+1]);
 }

 return 0;
}
