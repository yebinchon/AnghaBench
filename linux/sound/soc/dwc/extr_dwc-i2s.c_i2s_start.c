
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;
struct i2s_clk_config_data {int chan_nr; } ;
struct dw_i2s_dev {int i2s_base; struct i2s_clk_config_data config; } ;


 int CER ;
 int IER ;
 int IRER ;
 int ITER ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int i2s_enable_irqs (struct dw_i2s_dev*,scalar_t__,int ) ;
 int i2s_write_reg (int ,int ,int) ;

__attribute__((used)) static void i2s_start(struct dw_i2s_dev *dev,
        struct snd_pcm_substream *substream)
{
 struct i2s_clk_config_data *config = &dev->config;

 i2s_write_reg(dev->i2s_base, IER, 1);
 i2s_enable_irqs(dev, substream->stream, config->chan_nr);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  i2s_write_reg(dev->i2s_base, ITER, 1);
 else
  i2s_write_reg(dev->i2s_base, IRER, 1);

 i2s_write_reg(dev->i2s_base, CER, 1);
}
