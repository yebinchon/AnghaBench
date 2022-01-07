
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct session_data {int path_type; int bits_per_sample; int channels; int sample_rate; } ;
struct msm_routing_data {int lock; struct session_data* port_data; } ;
struct TYPE_2__ {unsigned int id; } ;


 int ADM_PATH_LIVE_REC ;
 int ADM_PATH_PLAYBACK ;
 unsigned int AFE_MAX_PORTS ;
 int DRV_NAME ;
 int EINVAL ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct msm_routing_data* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int routing_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *c = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct msm_routing_data *data = dev_get_drvdata(c->dev);
 unsigned int be_id = rtd->cpu_dai->id;
 struct session_data *session;
 int path_type;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  path_type = ADM_PATH_PLAYBACK;
 else
  path_type = ADM_PATH_LIVE_REC;

 if (be_id >= AFE_MAX_PORTS)
  return -EINVAL;

 session = &data->port_data[be_id];

 mutex_lock(&data->lock);

 session->path_type = path_type;
 session->sample_rate = params_rate(params);
 session->channels = params_channels(params);

 switch (params_format(params)) {
 case 129:
   session->bits_per_sample = 16;
  break;
 case 128:
   session->bits_per_sample = 24;
  break;
 default:
  break;
 }

 mutex_unlock(&data->lock);
 return 0;
}
