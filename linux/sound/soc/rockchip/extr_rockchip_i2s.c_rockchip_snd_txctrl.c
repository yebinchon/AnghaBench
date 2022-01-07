
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_i2s_dev {int tx_start; int dev; int regmap; int rx_start; } ;


 int I2S_CLR ;
 int I2S_CLR_RXC ;
 int I2S_CLR_TXC ;
 int I2S_DMACR ;
 int I2S_DMACR_TDE_DISABLE ;
 int I2S_DMACR_TDE_ENABLE ;
 int I2S_XFER ;
 int I2S_XFER_RXS_START ;
 int I2S_XFER_RXS_STOP ;
 int I2S_XFER_TXS_START ;
 int I2S_XFER_TXS_STOP ;
 int dev_warn (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
{
 unsigned int val = 0;
 int retry = 10;

 if (on) {
  regmap_update_bits(i2s->regmap, I2S_DMACR,
       I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);

  regmap_update_bits(i2s->regmap, I2S_XFER,
       I2S_XFER_TXS_START | I2S_XFER_RXS_START,
       I2S_XFER_TXS_START | I2S_XFER_RXS_START);

  i2s->tx_start = 1;
 } else {
  i2s->tx_start = 0;

  regmap_update_bits(i2s->regmap, I2S_DMACR,
       I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_DISABLE);

  if (!i2s->rx_start) {
   regmap_update_bits(i2s->regmap, I2S_XFER,
        I2S_XFER_TXS_START |
        I2S_XFER_RXS_START,
        I2S_XFER_TXS_STOP |
        I2S_XFER_RXS_STOP);

   udelay(150);
   regmap_update_bits(i2s->regmap, I2S_CLR,
        I2S_CLR_TXC | I2S_CLR_RXC,
        I2S_CLR_TXC | I2S_CLR_RXC);

   regmap_read(i2s->regmap, I2S_CLR, &val);


   while (val) {
    regmap_read(i2s->regmap, I2S_CLR, &val);
    retry--;
    if (!retry) {
     dev_warn(i2s->dev, "fail to clear\n");
     break;
    }
   }
  }
 }
}
