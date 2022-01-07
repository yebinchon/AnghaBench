
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;




 int snd_ice1712_akm4xxx_build_controls (struct snd_ice1712*) ;

__attribute__((used)) static int phase22_add_controls(struct snd_ice1712 *ice)
{
 int err = 0;

 switch (ice->eeprom.subvendor) {
 case 129:
 case 128:
  err = snd_ice1712_akm4xxx_build_controls(ice);
  if (err < 0)
   return err;
 }
 return 0;
}
