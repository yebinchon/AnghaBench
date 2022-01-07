
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int I2C_CTRL ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int VT1724_I2C_BUSY ;
 int dev_err (int ,char*) ;
 int inb (int ) ;

__attribute__((used)) static void wait_i2c_busy(struct snd_ice1712 *ice)
{
 int t = 0x10000;
 while ((inb(ICEREG1724(ice, I2C_CTRL)) & VT1724_I2C_BUSY) && t--)
  ;
 if (t == -1)
  dev_err(ice->card->dev, "i2c busy timeout\n");
}
