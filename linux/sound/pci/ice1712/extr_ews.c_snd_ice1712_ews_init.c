
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int subvendor; } ;
struct TYPE_9__ {int stream_put; int stream_get; int default_put; int default_get; int setup_rate; int open; } ;
struct TYPE_10__ {int cs8403_bits; TYPE_2__ ops; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int akm_codecs; TYPE_4__ eeprom; struct snd_akm4xxx* akm; TYPE_3__ spdif; int cs8427; TYPE_5__* i2c; TYPE_6__* card; struct ews_spec* spec; } ;
struct snd_akm4xxx {int dummy; } ;
struct ews_spec {int * i2cdevs; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_8__ {int * bit; } ;
struct TYPE_12__ {TYPE_1__ hw_ops; struct snd_ice1712* private_data; } ;


 int CS8427_BASE_ADDR ;
 int CS8427_BIP ;
 int CS8427_CONF ;
 int CS8427_PAR ;
 int CS8427_REG_RECVERRMASK ;
 int CS8427_UNLOCK ;
 int ENOMEM ;
 size_t EWS_I2C_6FIRE ;
 size_t EWS_I2C_88D ;
 size_t EWS_I2C_CS8404 ;
 size_t EWS_I2C_PCF1 ;
 size_t EWS_I2C_PCF2 ;
 int GFP_KERNEL ;
 int ICE1712_6FIRE_CS8427_ADDR ;
 int ICE1712_6FIRE_PCF9554_ADDR ;
 int ICE1712_EWS88D_PCF_ADDR ;
 int ICE1712_EWS88MT_CS8404_ADDR ;
 int ICE1712_EWS88MT_INPUT_ADDR ;
 int ICE1712_EWS88MT_OUTPUT_ADDR ;







 int PCF9554_REG_CONFIG ;
 int akm_6fire ;
 int akm_6fire_priv ;
 int akm_ews88mt ;
 int akm_ews88mt_priv ;
 int akm_ewx2496 ;
 int akm_ewx2496_priv ;
 int dev_err (int ,char*) ;
 int ews88_open_spdif ;
 int ews88_setup_spdif ;
 int ews88_spdif_default_get ;
 int ews88_spdif_default_put ;
 int ews88_spdif_stream_get ;
 int ews88_spdif_stream_put ;
 void* kzalloc (int,int ) ;
 int snd_cs8427_reg_write (int ,int ,int) ;
 int snd_i2c_bus_create (TYPE_6__*,char*,int *,TYPE_5__**) ;
 int snd_i2c_device_create (TYPE_5__*,char*,int ,int *) ;
 int snd_ice1712_6fire_write_pca (struct snd_ice1712*,int ,int) ;
 int snd_ice1712_akm4xxx_init (struct snd_akm4xxx*,int *,int *,struct snd_ice1712*) ;
 int snd_ice1712_ews88mt_chip_select (struct snd_ice1712*,int) ;
 int snd_ice1712_ews_cs8404_spdif_write (struct snd_ice1712*,int ) ;
 int snd_ice1712_ewx_cs8427_bit_ops ;
 int snd_ice1712_init_cs8427 (struct snd_ice1712*,int ) ;

__attribute__((used)) static int snd_ice1712_ews_init(struct snd_ice1712 *ice)
{
 int err;
 struct snd_akm4xxx *ak;
 struct ews_spec *spec;


 switch (ice->eeprom.subvendor) {
 case 130:
  ice->num_total_dacs = 2;
  ice->num_total_adcs = 2;
  break;
 case 132:
 case 131:
 case 129:
 case 128:
  ice->num_total_dacs = 8;
  ice->num_total_adcs = 8;
  break;
 case 133:

  ice->num_total_dacs = 8;
  ice->num_total_adcs = 8;
  break;
 case 134:
  ice->num_total_dacs = 6;
  ice->num_total_adcs = 6;
  break;
 }

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 ice->spec = spec;


 if ((err = snd_i2c_bus_create(ice->card, "ICE1712 GPIO 1", ((void*)0), &ice->i2c)) < 0) {
  dev_err(ice->card->dev, "unable to create I2C bus\n");
  return err;
 }
 ice->i2c->private_data = ice;
 ice->i2c->hw_ops.bit = &snd_ice1712_ewx_cs8427_bit_ops;


 switch (ice->eeprom.subvendor) {
 case 134:
  err = snd_i2c_device_create(ice->i2c, "PCF9554",
         ICE1712_6FIRE_PCF9554_ADDR,
         &spec->i2cdevs[EWS_I2C_6FIRE]);
  if (err < 0) {
   dev_err(ice->card->dev,
    "PCF9554 initialization failed\n");
   return err;
  }
  snd_ice1712_6fire_write_pca(ice, PCF9554_REG_CONFIG, 0x80);
  break;
 case 132:
 case 131:
 case 129:
 case 128:

  err = snd_i2c_device_create(ice->i2c, "CS8404",
         ICE1712_EWS88MT_CS8404_ADDR,
         &spec->i2cdevs[EWS_I2C_CS8404]);
  if (err < 0)
   return err;
  err = snd_i2c_device_create(ice->i2c, "PCF8574 (1st)",
         ICE1712_EWS88MT_INPUT_ADDR,
         &spec->i2cdevs[EWS_I2C_PCF1]);
  if (err < 0)
   return err;
  err = snd_i2c_device_create(ice->i2c, "PCF8574 (2nd)",
         ICE1712_EWS88MT_OUTPUT_ADDR,
         &spec->i2cdevs[EWS_I2C_PCF2]);
  if (err < 0)
   return err;

  if ((err = snd_ice1712_ews88mt_chip_select(ice, 0x0f)) < 0)
   return err;
  break;
 case 133:
  err = snd_i2c_device_create(ice->i2c, "PCF8575",
         ICE1712_EWS88D_PCF_ADDR,
         &spec->i2cdevs[EWS_I2C_88D]);
  if (err < 0)
   return err;
  break;
 }


 switch (ice->eeprom.subvendor) {
 case 130:
  if ((err = snd_ice1712_init_cs8427(ice, CS8427_BASE_ADDR)) < 0)
   return err;
  snd_cs8427_reg_write(ice->cs8427, CS8427_REG_RECVERRMASK, CS8427_UNLOCK | CS8427_CONF | CS8427_BIP | CS8427_PAR);
  break;
 case 134:
  if ((err = snd_ice1712_init_cs8427(ice, ICE1712_6FIRE_CS8427_ADDR)) < 0)
   return err;
  snd_cs8427_reg_write(ice->cs8427, CS8427_REG_RECVERRMASK, CS8427_UNLOCK | CS8427_CONF | CS8427_BIP | CS8427_PAR);
  break;
 case 132:
 case 131:
 case 129:
 case 128:
 case 133:

  ice->spdif.ops.open = ews88_open_spdif;
  ice->spdif.ops.setup_rate = ews88_setup_spdif;
  ice->spdif.ops.default_get = ews88_spdif_default_get;
  ice->spdif.ops.default_put = ews88_spdif_default_put;
  ice->spdif.ops.stream_get = ews88_spdif_stream_get;
  ice->spdif.ops.stream_put = ews88_spdif_stream_put;

  snd_ice1712_ews_cs8404_spdif_write(ice, ice->spdif.cs8403_bits);
  break;
 }


 switch (ice->eeprom.subvendor) {
 case 133:
  return 0;
 }


 ak = ice->akm = kzalloc(sizeof(struct snd_akm4xxx), GFP_KERNEL);
 if (! ak)
  return -ENOMEM;
 ice->akm_codecs = 1;

 switch (ice->eeprom.subvendor) {
 case 132:
 case 131:
 case 129:
 case 128:
  err = snd_ice1712_akm4xxx_init(ak, &akm_ews88mt, &akm_ews88mt_priv, ice);
  break;
 case 130:
  err = snd_ice1712_akm4xxx_init(ak, &akm_ewx2496, &akm_ewx2496_priv, ice);
  break;
 case 134:
  err = snd_ice1712_akm4xxx_init(ak, &akm_6fire, &akm_6fire_priv, ice);
  break;
 default:
  err = 0;
 }

 return err;
}
