
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dw_i2s_dev {int i2s_base; } ;


 int ROR (scalar_t__) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int TOR (scalar_t__) ;
 int i2s_read_reg (int ,int ) ;

__attribute__((used)) static inline void i2s_clear_irqs(struct dw_i2s_dev *dev, u32 stream)
{
 u32 i = 0;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
  for (i = 0; i < 4; i++)
   i2s_read_reg(dev->i2s_base, TOR(i));
 } else {
  for (i = 0; i < 4; i++)
   i2s_read_reg(dev->i2s_base, ROR(i));
 }
}
