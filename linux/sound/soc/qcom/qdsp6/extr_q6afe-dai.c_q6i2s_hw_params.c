
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {size_t id; int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct q6afe_i2s_cfg {int sd_line_mask; int num_channels; int bit_width; int sample_rate; } ;
struct q6afe_dai_data {TYPE_1__* priv; TYPE_2__* port_config; } ;
struct TYPE_4__ {struct q6afe_i2s_cfg i2s_cfg; } ;
struct TYPE_3__ {int sd_line_mask; } ;


 struct q6afe_dai_data* dev_get_drvdata (int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int q6i2s_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *params,
      struct snd_soc_dai *dai)
{
 struct q6afe_dai_data *dai_data = dev_get_drvdata(dai->dev);
 struct q6afe_i2s_cfg *i2s = &dai_data->port_config[dai->id].i2s_cfg;

 i2s->sample_rate = params_rate(params);
 i2s->bit_width = params_width(params);
 i2s->num_channels = params_channels(params);
 i2s->sd_line_mask = dai_data->priv[dai->id].sd_line_mask;

 return 0;
}
