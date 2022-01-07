
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;
struct dw_i2s_dev {int i2s_base; int active; } ;


 int CER ;
 int IER ;
 int IRER ;
 int ITER ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int i2s_clear_irqs (struct dw_i2s_dev*,scalar_t__) ;
 int i2s_disable_irqs (struct dw_i2s_dev*,scalar_t__,int) ;
 int i2s_write_reg (int ,int ,int ) ;

__attribute__((used)) static void i2s_stop(struct dw_i2s_dev *dev,
  struct snd_pcm_substream *substream)
{

 i2s_clear_irqs(dev, substream->stream);
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  i2s_write_reg(dev->i2s_base, ITER, 0);
 else
  i2s_write_reg(dev->i2s_base, IRER, 0);

 i2s_disable_irqs(dev, substream->stream, 8);

 if (!dev->active) {
  i2s_write_reg(dev->i2s_base, CER, 0);
  i2s_write_reg(dev->i2s_base, IER, 0);
 }
}
