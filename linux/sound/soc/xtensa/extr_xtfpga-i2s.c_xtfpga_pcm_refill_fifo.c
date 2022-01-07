
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_i2s {int regmap; int tx_fifo_low; int tx_fifo_level; } ;


 int XTFPGA_I2S_CONFIG ;
 int XTFPGA_I2S_CONFIG_INT_ENABLE ;
 int XTFPGA_I2S_CONFIG_TX_ENABLE ;
 unsigned int XTFPGA_I2S_INT_LEVEL ;
 int XTFPGA_I2S_INT_MASK ;
 int XTFPGA_I2S_INT_STATUS ;
 unsigned int XTFPGA_I2S_INT_UNDERRUN ;
 unsigned int XTFPGA_I2S_INT_VALID ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,unsigned int) ;
 int xtfpga_pcm_push_tx (struct xtfpga_i2s*) ;

__attribute__((used)) static void xtfpga_pcm_refill_fifo(struct xtfpga_i2s *i2s)
{
 unsigned int_status;
 unsigned i;

 regmap_read(i2s->regmap, XTFPGA_I2S_INT_STATUS,
      &int_status);

 for (i = 0; i < 2; ++i) {
  bool tx_active = xtfpga_pcm_push_tx(i2s);

  regmap_write(i2s->regmap, XTFPGA_I2S_INT_STATUS,
        XTFPGA_I2S_INT_VALID);
  if (tx_active)
   regmap_read(i2s->regmap, XTFPGA_I2S_INT_STATUS,
        &int_status);

  if (!tx_active ||
      !(int_status & XTFPGA_I2S_INT_LEVEL))
   break;





  i2s->tx_fifo_level = i2s->tx_fifo_low;
 }

 if (!(int_status & XTFPGA_I2S_INT_LEVEL))
  regmap_write(i2s->regmap, XTFPGA_I2S_INT_MASK,
        XTFPGA_I2S_INT_VALID);
 else if (!(int_status & XTFPGA_I2S_INT_UNDERRUN))
  regmap_write(i2s->regmap, XTFPGA_I2S_INT_MASK,
        XTFPGA_I2S_INT_UNDERRUN);

 if (!(int_status & XTFPGA_I2S_INT_UNDERRUN))
  regmap_update_bits(i2s->regmap, XTFPGA_I2S_CONFIG,
       XTFPGA_I2S_CONFIG_INT_ENABLE |
       XTFPGA_I2S_CONFIG_TX_ENABLE,
       XTFPGA_I2S_CONFIG_INT_ENABLE |
       XTFPGA_I2S_CONFIG_TX_ENABLE);
 else
  regmap_update_bits(i2s->regmap, XTFPGA_I2S_CONFIG,
       XTFPGA_I2S_CONFIG_INT_ENABLE |
       XTFPGA_I2S_CONFIG_TX_ENABLE, 0);
}
