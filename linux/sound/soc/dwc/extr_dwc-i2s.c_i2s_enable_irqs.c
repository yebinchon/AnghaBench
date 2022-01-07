
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dw_i2s_dev {int i2s_base; } ;


 int IMR (scalar_t__) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ i2s_read_reg (int ,int ) ;
 int i2s_write_reg (int ,int ,scalar_t__) ;

__attribute__((used)) static inline void i2s_enable_irqs(struct dw_i2s_dev *dev, u32 stream,
       int chan_nr)
{
 u32 i, irq;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
  for (i = 0; i < (chan_nr / 2); i++) {
   irq = i2s_read_reg(dev->i2s_base, IMR(i));
   i2s_write_reg(dev->i2s_base, IMR(i), irq & ~0x30);
  }
 } else {
  for (i = 0; i < (chan_nr / 2); i++) {
   irq = i2s_read_reg(dev->i2s_base, IMR(i));
   i2s_write_reg(dev->i2s_base, IMR(i), irq & ~0x03);
  }
 }
}
