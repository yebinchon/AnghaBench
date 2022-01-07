
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int subvendor; int gpiodir; } ;
struct TYPE_8__ {int stream_put; int stream_get; int default_put; int default_get; int setup_rate; int open; } ;
struct TYPE_9__ {int cs8403_bits; TYPE_2__ ops; } ;
struct TYPE_7__ {void* set_pro_rate; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int pm_suspend_enabled; int akm_codecs; TYPE_4__ eeprom; struct snd_akm4xxx* akm; TYPE_3__ spdif; TYPE_1__ gpio; TYPE_6__* i2c; TYPE_5__* card; int pm_suspend; int pm_resume; int omni; } ;
struct snd_akm4xxx {int dummy; } ;
struct TYPE_12__ {int * ops; struct snd_ice1712* private_data; } ;
struct TYPE_11__ {int dev; } ;


 int CS8427_BASE_ADDR ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char ICE1712_DELTA_AP_CCLK ;
 int ICE1712_IREG_GPIO_DATA ;
 int akm_audiophile ;
 int akm_audiophile_priv ;
 int akm_delta1010lt ;
 int akm_delta1010lt_priv ;
 int akm_delta410 ;
 int akm_delta410_priv ;
 int akm_delta44 ;
 int akm_delta44_priv ;
 int akm_delta66e ;
 int akm_delta66e_priv ;
 int akm_vx442 ;
 int akm_vx442_priv ;
 int ap_cs8427_i2c_ops ;
 void* delta_1010_set_rate_val ;
 int delta_open_spdif ;
 int delta_setup_spdif ;
 int delta_spdif_default_get ;
 int delta_spdif_default_put ;
 int delta_spdif_stream_get ;
 int delta_spdif_stream_put ;
 int dev_err (int ,char*) ;
 struct snd_akm4xxx* kmalloc (int,int ) ;
 int snd_BUG () ;
 int snd_i2c_bus_create (TYPE_5__*,char*,int *,TYPE_6__**) ;
 int snd_ice1712_akm4xxx_init (struct snd_akm4xxx*,int *,int *,struct snd_ice1712*) ;
 int snd_ice1712_delta_cs8403_spdif_write (struct snd_ice1712*,int ) ;
 int snd_ice1712_delta_resume ;
 int snd_ice1712_delta_suspend ;
 int snd_ice1712_init_cs8427 (struct snd_ice1712*,int ) ;
 unsigned char snd_ice1712_read (struct snd_ice1712*,int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static int snd_ice1712_delta_init(struct snd_ice1712 *ice)
{
 int err;
 struct snd_akm4xxx *ak;
 unsigned char tmp;

 if (ice->eeprom.subvendor == 138 &&
     ice->eeprom.gpiodir == 0x7b)
  ice->eeprom.subvendor = 137;

 if (ice->eeprom.subvendor == 133 &&
     ice->eeprom.gpiodir == 0xfb)
      ice->eeprom.subvendor = 132;


 switch (ice->eeprom.subvendor) {
 case 139:
  ice->num_total_dacs = 2;
  ice->num_total_adcs = 2;
  break;
 case 135:
  ice->num_total_dacs = 8;
  ice->num_total_adcs = 2;
  break;
 case 134:
 case 133:
  ice->num_total_dacs = ice->omni ? 8 : 4;
  ice->num_total_adcs = ice->omni ? 8 : 4;
  break;
 case 138:
 case 137:
 case 136:
 case 129:
 case 130:
  ice->num_total_dacs = 8;
  ice->num_total_adcs = 8;
  break;
 case 131:
  ice->num_total_dacs = 4;
  break;
 case 128:
 case 132:
  ice->num_total_dacs = 4;
  ice->num_total_adcs = 4;
  break;
 }






 tmp = snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA);
 tmp |= ICE1712_DELTA_AP_CCLK;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
 udelay(5);


 switch (ice->eeprom.subvendor) {
 case 139:
 case 135:
 case 137:
 case 136:
 case 128:
 case 132:
  if ((err = snd_i2c_bus_create(ice->card, "ICE1712 GPIO 1", ((void*)0), &ice->i2c)) < 0) {
   dev_err(ice->card->dev, "unable to create I2C bus\n");
   return err;
  }
  ice->i2c->private_data = ice;
  ice->i2c->ops = &ap_cs8427_i2c_ops;
  if ((err = snd_ice1712_init_cs8427(ice, CS8427_BASE_ADDR)) < 0)
   return err;
  break;
 case 138:
 case 129:
  ice->gpio.set_pro_rate = delta_1010_set_rate_val;
  break;
 case 131:
  ice->gpio.set_pro_rate = delta_1010_set_rate_val;

 case 133:
  ice->spdif.ops.open = delta_open_spdif;
  ice->spdif.ops.setup_rate = delta_setup_spdif;
  ice->spdif.ops.default_get = delta_spdif_default_get;
  ice->spdif.ops.default_put = delta_spdif_default_put;
  ice->spdif.ops.stream_get = delta_spdif_stream_get;
  ice->spdif.ops.stream_put = delta_spdif_stream_put;

  snd_ice1712_delta_cs8403_spdif_write(ice, ice->spdif.cs8403_bits);
  break;
 }


 switch (ice->eeprom.subvendor) {
 case 138:
 case 137:
 case 131:
 case 129:
  return 0;
 }


 ak = ice->akm = kmalloc(sizeof(struct snd_akm4xxx), GFP_KERNEL);
 if (! ak)
  return -ENOMEM;
 ice->akm_codecs = 1;

 switch (ice->eeprom.subvendor) {
 case 139:
  err = snd_ice1712_akm4xxx_init(ak, &akm_audiophile, &akm_audiophile_priv, ice);
  break;
 case 135:
  err = snd_ice1712_akm4xxx_init(ak, &akm_delta410, &akm_delta410_priv, ice);
  break;
 case 136:
 case 130:
  err = snd_ice1712_akm4xxx_init(ak, &akm_delta1010lt, &akm_delta1010lt_priv, ice);
  break;
 case 133:
 case 134:
  err = snd_ice1712_akm4xxx_init(ak, &akm_delta44, &akm_delta44_priv, ice);
  break;
 case 128:
  err = snd_ice1712_akm4xxx_init(ak, &akm_vx442, &akm_vx442_priv, ice);
  break;
 case 132:
  err = snd_ice1712_akm4xxx_init(ak, &akm_delta66e, &akm_delta66e_priv, ice);
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }

 return err;
}
