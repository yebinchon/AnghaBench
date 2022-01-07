
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int formats; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct amdtp_stream {int dummy; } ;
struct snd_oxfw {int ** rx_stream_formats; struct amdtp_stream rx_stream; int ** tx_stream_formats; struct amdtp_stream tx_stream; } ;


 int AM824_IN_PCM_FORMAT_BITS ;
 int AM824_OUT_PCM_FORMAT_BITS ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int amdtp_am824_add_pcm_hw_constraints (struct amdtp_stream*,struct snd_pcm_runtime*) ;
 int hw_rule_channels ;
 int hw_rule_rate ;
 int limit_channels_and_rates (TYPE_1__*,int **) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,int **,int ,int) ;

__attribute__((used)) static int init_hw_params(struct snd_oxfw *oxfw,
     struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 u8 **formats;
 struct amdtp_stream *stream;
 int err;

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
  runtime->hw.formats = AM824_IN_PCM_FORMAT_BITS;
  stream = &oxfw->tx_stream;
  formats = oxfw->tx_stream_formats;
 } else {
  runtime->hw.formats = AM824_OUT_PCM_FORMAT_BITS;
  stream = &oxfw->rx_stream;
  formats = oxfw->rx_stream_formats;
 }

 limit_channels_and_rates(&runtime->hw, formats);

 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
      hw_rule_channels, formats,
      SNDRV_PCM_HW_PARAM_RATE, -1);
 if (err < 0)
  goto end;

 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
      hw_rule_rate, formats,
      SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 if (err < 0)
  goto end;

 err = amdtp_am824_add_pcm_hw_constraints(stream, runtime);
end:
 return err;
}
