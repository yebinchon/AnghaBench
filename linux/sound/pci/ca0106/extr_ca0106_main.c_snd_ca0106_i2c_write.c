
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_ca0106 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int I2C_A ;
 int I2C_A_ADC_ABORT ;
 int I2C_A_ADC_ADD ;
 int I2C_A_ADC_LAST ;
 int I2C_A_ADC_START ;
 int I2C_D1 ;
 int dev_err (int ,char*) ;
 int snd_ca0106_ptr_read (struct snd_ca0106*,int ,int ) ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,int ,int ,int) ;

int snd_ca0106_i2c_write(struct snd_ca0106 *emu,
    u32 reg,
    u32 value)
{
 u32 tmp;
 int timeout = 0;
 int status;
 int retry;
 if ((reg > 0x7f) || (value > 0x1ff)) {
  dev_err(emu->card->dev, "i2c_write: invalid values.\n");
  return -EINVAL;
 }

 tmp = reg << 25 | value << 16;







 snd_ca0106_ptr_write(emu, I2C_D1, 0, tmp);

 for (retry = 0; retry < 10; retry++) {



  tmp = 0;
  tmp = tmp | (I2C_A_ADC_LAST|I2C_A_ADC_START|I2C_A_ADC_ADD);
  snd_ca0106_ptr_write(emu, I2C_A, 0, tmp);


  while (1) {
   status = snd_ca0106_ptr_read(emu, I2C_A, 0);

   timeout++;
   if ((status & I2C_A_ADC_START) == 0)
    break;

   if (timeout > 1000)
    break;
  }

  if ((status & I2C_A_ADC_ABORT) == 0)
   break;
 }

 if (retry == 10) {
  dev_err(emu->card->dev, "Writing to ADC failed!\n");
  return -EINVAL;
 }

     return 0;
}
