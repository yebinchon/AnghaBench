
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_emu10k1 {int i2c_lock; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int I2C_A_ADC_ABORT ;
 int I2C_A_ADC_ADD ;
 int I2C_A_ADC_LAST ;
 int I2C_A_ADC_START ;
 int P17V_I2C_1 ;
 int P17V_I2C_ADDR ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*,int) ;
 int mdelay (int) ;
 int snd_emu10k1_ptr20_read (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_ptr20_write (struct snd_emu10k1*,int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int snd_emu10k1_i2c_write(struct snd_emu10k1 *emu,
    u32 reg,
    u32 value)
{
 u32 tmp;
 int timeout = 0;
 int status;
 int retry;
 int err = 0;

 if ((reg > 0x7f) || (value > 0x1ff)) {
  dev_err(emu->card->dev, "i2c_write: invalid values.\n");
  return -EINVAL;
 }


 spin_lock(&emu->i2c_lock);

 tmp = reg << 25 | value << 16;


 snd_emu10k1_ptr20_write(emu, P17V_I2C_1, 0, tmp);
 tmp = snd_emu10k1_ptr20_read(emu, P17V_I2C_1, 0);

 for (retry = 0; retry < 10; retry++) {

  tmp = 0;
  tmp = tmp | (I2C_A_ADC_LAST|I2C_A_ADC_START|I2C_A_ADC_ADD);
  snd_emu10k1_ptr20_write(emu, P17V_I2C_ADDR, 0, tmp);


  while (1) {
   mdelay(1);
   status = snd_emu10k1_ptr20_read(emu, P17V_I2C_ADDR, 0);
   timeout++;
   if ((status & I2C_A_ADC_START) == 0)
    break;

   if (timeout > 1000) {
    dev_warn(emu->card->dev,
        "emu10k1:I2C:timeout status=0x%x\n",
        status);
    break;
   }
  }

  if ((status & I2C_A_ADC_ABORT) == 0)
   break;
 }

 if (retry == 10) {
  dev_err(emu->card->dev, "Writing to ADC failed!\n");
  dev_err(emu->card->dev, "status=0x%x, reg=%d, value=%d\n",
   status, reg, value);

  err = -EINVAL;
 }

 spin_unlock(&emu->i2c_lock);
 return err;
}
