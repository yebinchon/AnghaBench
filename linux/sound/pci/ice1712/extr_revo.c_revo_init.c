
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int subvendor; } ;
struct TYPE_3__ {int i2s_mclk_changed; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int akm_codecs; TYPE_2__ eeprom; struct snd_akm4xxx* akm; TYPE_1__ gpio; } ;
struct snd_akm4xxx {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VT1724_REVO_MUTE ;



 int akm_ap192 ;
 int akm_ap192_priv ;
 int akm_revo51 ;
 int akm_revo51_adc ;
 int akm_revo51_adc_priv ;
 int akm_revo51_priv ;
 int akm_revo_front ;
 int akm_revo_front_priv ;
 int akm_revo_surround ;
 int akm_revo_surround_priv ;
 int ap192_ak4114_init (struct snd_ice1712*) ;
 struct snd_akm4xxx* kcalloc (int,int,int ) ;
 int ptc_revo51_volume ;
 int revo51_i2c_init (struct snd_ice1712*,int *) ;
 int revo_i2s_mclk_changed ;
 int snd_BUG () ;
 int snd_ice1712_akm4xxx_init (struct snd_akm4xxx*,int *,int *,struct snd_ice1712*) ;
 int snd_ice1712_gpio_write_bits (struct snd_ice1712*,int ,int ) ;

__attribute__((used)) static int revo_init(struct snd_ice1712 *ice)
{
 struct snd_akm4xxx *ak;
 int err;


 switch (ice->eeprom.subvendor) {
 case 128:
  ice->num_total_dacs = 8;
  ice->num_total_adcs = 2;
  ice->gpio.i2s_mclk_changed = revo_i2s_mclk_changed;
  break;
 case 129:
  ice->num_total_dacs = 8;
  ice->num_total_adcs = 2;
  break;
 case 130:
  ice->num_total_dacs = 2;
  ice->num_total_adcs = 2;
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }


 ak = ice->akm = kcalloc(2, sizeof(struct snd_akm4xxx), GFP_KERNEL);
 if (! ak)
  return -ENOMEM;
 switch (ice->eeprom.subvendor) {
 case 128:
  ice->akm_codecs = 2;
  err = snd_ice1712_akm4xxx_init(ak, &akm_revo_front,
      &akm_revo_front_priv, ice);
  if (err < 0)
   return err;
  err = snd_ice1712_akm4xxx_init(ak+1, &akm_revo_surround,
      &akm_revo_surround_priv, ice);
  if (err < 0)
   return err;

  snd_ice1712_gpio_write_bits(ice, VT1724_REVO_MUTE,
      VT1724_REVO_MUTE);
  break;
 case 129:
  ice->akm_codecs = 2;
  err = snd_ice1712_akm4xxx_init(ak, &akm_revo51,
            &akm_revo51_priv, ice);
  if (err < 0)
   return err;
  err = snd_ice1712_akm4xxx_init(ak+1, &akm_revo51_adc,
            &akm_revo51_adc_priv, ice);
  if (err < 0)
   return err;
  err = revo51_i2c_init(ice, &ptc_revo51_volume);
  if (err < 0)
   return err;

  snd_ice1712_gpio_write_bits(ice, VT1724_REVO_MUTE,
         VT1724_REVO_MUTE);
  break;
 case 130:
  ice->akm_codecs = 1;
  err = snd_ice1712_akm4xxx_init(ak, &akm_ap192, &akm_ap192_priv,
            ice);
  if (err < 0)
   return err;
  err = ap192_ak4114_init(ice);
  if (err < 0)
   return err;


  snd_ice1712_gpio_write_bits(ice, VT1724_REVO_MUTE,
         VT1724_REVO_MUTE);
  break;
 }

 return 0;
}
