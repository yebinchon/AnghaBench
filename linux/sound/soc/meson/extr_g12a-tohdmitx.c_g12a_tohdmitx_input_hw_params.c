
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dai {TYPE_3__* driver; struct g12a_tohdmitx_input* playback_dma_data; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int formats; int sig_bits; void* channels_max; void* channels_min; void* rate_max; void* rate_min; int rates; } ;
struct g12a_tohdmitx_input {TYPE_1__ params; } ;
struct TYPE_5__ {int sig_bits; } ;
struct TYPE_6__ {TYPE_2__ playback; } ;


 void* params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 void* params_rate (struct snd_pcm_hw_params*) ;
 int snd_pcm_rate_to_rate_bit (void*) ;

__attribute__((used)) static int g12a_tohdmitx_input_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *params,
      struct snd_soc_dai *dai)
{
 struct g12a_tohdmitx_input *data = dai->playback_dma_data;

 data->params.rates = snd_pcm_rate_to_rate_bit(params_rate(params));
 data->params.rate_min = params_rate(params);
 data->params.rate_max = params_rate(params);
 data->params.formats = 1 << params_format(params);
 data->params.channels_min = params_channels(params);
 data->params.channels_max = params_channels(params);
 data->params.sig_bits = dai->driver->playback.sig_bits;

 return 0;
}
