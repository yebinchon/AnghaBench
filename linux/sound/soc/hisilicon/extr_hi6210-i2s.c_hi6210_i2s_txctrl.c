
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dev; } ;
struct hi6210_i2s {int lock; } ;


 int HII2S_I2S_CFG ;
 int HII2S_I2S_CFG__S2_IF_TX_EN ;
 struct hi6210_i2s* dev_get_drvdata (int ) ;
 int hi6210_read_reg (struct hi6210_i2s*,int ) ;
 int hi6210_write_reg (struct hi6210_i2s*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void hi6210_i2s_txctrl(struct snd_soc_dai *cpu_dai, int on)
{
 struct hi6210_i2s *i2s = dev_get_drvdata(cpu_dai->dev);
 u32 val;

 spin_lock(&i2s->lock);
 if (on) {

  val = hi6210_read_reg(i2s, HII2S_I2S_CFG);
  val |= HII2S_I2S_CFG__S2_IF_TX_EN;
  hi6210_write_reg(i2s, HII2S_I2S_CFG, val);
 } else {

  val = hi6210_read_reg(i2s, HII2S_I2S_CFG);
  val &= ~HII2S_I2S_CFG__S2_IF_TX_EN;
  hi6210_write_reg(i2s, HII2S_I2S_CFG, val);
 }
 spin_unlock(&i2s->lock);
}
