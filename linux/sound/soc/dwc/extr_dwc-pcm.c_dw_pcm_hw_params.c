
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct dw_i2s_dev* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct dw_i2s_dev {int dev; int rx_fn; int tx_fn; } ;


 int EINVAL ;



 int dev_err (int ,char*) ;
 int dw_pcm_rx_16 ;
 int dw_pcm_rx_32 ;
 int dw_pcm_tx_16 ;
 int dw_pcm_tx_32 ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int dw_pcm_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *hw_params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct dw_i2s_dev *dev = runtime->private_data;
 int ret;

 switch (params_channels(hw_params)) {
 case 2:
  break;
 default:
  dev_err(dev->dev, "invalid channels number\n");
  return -EINVAL;
 }

 switch (params_format(hw_params)) {
 case 130:
  dev->tx_fn = dw_pcm_tx_16;
  dev->rx_fn = dw_pcm_rx_16;
  break;
 case 129:
 case 128:
  dev->tx_fn = dw_pcm_tx_32;
  dev->rx_fn = dw_pcm_rx_32;
  break;
 default:
  dev_err(dev->dev, "invalid format\n");
  return -EINVAL;
 }

 ret = snd_pcm_lib_malloc_pages(substream,
   params_buffer_bytes(hw_params));
 if (ret < 0)
  return ret;
 else
  return 0;
}
