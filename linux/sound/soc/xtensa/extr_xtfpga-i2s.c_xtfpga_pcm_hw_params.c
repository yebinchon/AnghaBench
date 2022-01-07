
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_i2s {int tx_fn; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct xtfpga_i2s* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 unsigned int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 int xtfpga_pcm_tx_1x16 ;
 int xtfpga_pcm_tx_1x32 ;
 int xtfpga_pcm_tx_2x16 ;
 int xtfpga_pcm_tx_2x32 ;

__attribute__((used)) static int xtfpga_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *hw_params)
{
 int ret;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct xtfpga_i2s *i2s = runtime->private_data;
 unsigned channels = params_channels(hw_params);

 switch (channels) {
 case 1:
 case 2:
  break;

 default:
  return -EINVAL;

 }

 switch (params_format(hw_params)) {
 case 129:
  i2s->tx_fn = (channels == 1) ?
   xtfpga_pcm_tx_1x16 :
   xtfpga_pcm_tx_2x16;
  break;

 case 128:
  i2s->tx_fn = (channels == 1) ?
   xtfpga_pcm_tx_1x32 :
   xtfpga_pcm_tx_2x32;
  break;

 default:
  return -EINVAL;
 }

 ret = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(hw_params));
 return ret;
}
