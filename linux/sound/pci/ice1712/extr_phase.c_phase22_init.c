
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int vt1720; int akm_codecs; TYPE_1__ eeprom; struct snd_akm4xxx* akm; } ;
struct snd_akm4xxx {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int akm_phase22 ;
 int akm_phase22_priv ;
 struct snd_akm4xxx* kzalloc (int,int ) ;
 int snd_BUG () ;
 int snd_ice1712_akm4xxx_init (struct snd_akm4xxx*,int *,int *,struct snd_ice1712*) ;

__attribute__((used)) static int phase22_init(struct snd_ice1712 *ice)
{
 struct snd_akm4xxx *ak;
 int err;


 switch (ice->eeprom.subvendor) {
 case 129:
 case 128:
  ice->num_total_dacs = 2;
  ice->num_total_adcs = 2;
  ice->vt1720 = 1;
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }


 ice->akm = kzalloc(sizeof(struct snd_akm4xxx), GFP_KERNEL);
 ak = ice->akm;
 if (!ak)
  return -ENOMEM;
 ice->akm_codecs = 1;
 switch (ice->eeprom.subvendor) {
 case 129:
 case 128:
  err = snd_ice1712_akm4xxx_init(ak, &akm_phase22,
      &akm_phase22_priv, ice);
  if (err < 0)
   return err;
  break;
 }

 return 0;
}
