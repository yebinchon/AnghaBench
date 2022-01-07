
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {size_t id; int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct q6afe_hdmi_cfg {int bit_width; int channel_allocation; int sample_rate; } ;
struct q6afe_dai_data {TYPE_1__* port_config; } ;
struct TYPE_2__ {struct q6afe_hdmi_cfg hdmi; } ;


 int EINVAL ;


 int dev_err (int ,char*,int) ;
 struct q6afe_dai_data* dev_get_drvdata (int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int q6hdmi_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct q6afe_dai_data *dai_data = dev_get_drvdata(dai->dev);
 int channels = params_channels(params);
 struct q6afe_hdmi_cfg *hdmi = &dai_data->port_config[dai->id].hdmi;

 hdmi->sample_rate = params_rate(params);
 switch (params_format(params)) {
 case 129:
  hdmi->bit_width = 16;
  break;
 case 128:
  hdmi->bit_width = 24;
  break;
 }


 switch (channels) {
 case 2:
  hdmi->channel_allocation = 0;
  break;
 case 3:
  hdmi->channel_allocation = 0x02;
  break;
 case 4:
  hdmi->channel_allocation = 0x06;
  break;
 case 5:
  hdmi->channel_allocation = 0x0A;
  break;
 case 6:
  hdmi->channel_allocation = 0x0B;
  break;
 case 7:
  hdmi->channel_allocation = 0x12;
  break;
 case 8:
  hdmi->channel_allocation = 0x13;
  break;
 default:
  dev_err(dai->dev, "invalid Channels = %u\n", channels);
  return -EINVAL;
 }

 return 0;
}
