
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_i2s_dev {int clk_prepared; int i2s_regmap; int dev; } ;


 int BCM2835_I2S_CS_A_REG ;
 int BCM2835_I2S_RXCLR ;
 int BCM2835_I2S_RXON ;
 int BCM2835_I2S_SYNC ;
 int BCM2835_I2S_TXCLR ;
 int BCM2835_I2S_TXON ;
 int bcm2835_i2s_start_clock (struct bcm2835_i2s_dev*) ;
 int bcm2835_i2s_stop_clock (struct bcm2835_i2s_dev*) ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void bcm2835_i2s_clear_fifos(struct bcm2835_i2s_dev *dev,
        bool tx, bool rx)
{
 int timeout = 1000;
 uint32_t syncval;
 uint32_t csreg;
 uint32_t i2s_active_state;
 bool clk_was_prepared;
 uint32_t off;
 uint32_t clr;

 off = tx ? BCM2835_I2S_TXON : 0;
 off |= rx ? BCM2835_I2S_RXON : 0;

 clr = tx ? BCM2835_I2S_TXCLR : 0;
 clr |= rx ? BCM2835_I2S_RXCLR : 0;


 regmap_read(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &csreg);
 i2s_active_state = csreg & (BCM2835_I2S_RXON | BCM2835_I2S_TXON);


 clk_was_prepared = dev->clk_prepared;
 if (!clk_was_prepared)
  bcm2835_i2s_start_clock(dev);


 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, off, 0);





 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, clr, clr);







 regmap_read(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &syncval);
 syncval &= BCM2835_I2S_SYNC;

 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
   BCM2835_I2S_SYNC, ~syncval);


 while (--timeout) {
  regmap_read(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &csreg);
  if ((csreg & BCM2835_I2S_SYNC) != syncval)
   break;
 }

 if (!timeout)
  dev_err(dev->dev, "I2S SYNC error!\n");


 if (!clk_was_prepared)
  bcm2835_i2s_stop_clock(dev);


 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
   BCM2835_I2S_RXON | BCM2835_I2S_TXON, i2s_active_state);
}
