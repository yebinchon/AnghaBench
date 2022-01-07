
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
struct sirf_audio_codec {int dummy; } ;
struct TYPE_2__ {int channels; } ;


 int AUDIO_IC_CODEC_CTRL0 ;
 int EINVAL ;
 int IC_HSLEN ;
 int IC_HSREN ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int sirf_audio_codec_rx_disable (struct sirf_audio_codec*) ;
 int sirf_audio_codec_rx_enable (struct sirf_audio_codec*,int ) ;
 int sirf_audio_codec_tx_disable (struct sirf_audio_codec*) ;
 int sirf_audio_codec_tx_enable (struct sirf_audio_codec*) ;
 struct sirf_audio_codec* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int sirf_audio_codec_trigger(struct snd_pcm_substream *substream,
  int cmd,
  struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct sirf_audio_codec *sirf_audio_codec = snd_soc_component_get_drvdata(component);
 int playback = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;





 switch (cmd) {
 case 129:
 case 128:
 case 133:
  if (playback) {
   snd_soc_component_update_bits(component, AUDIO_IC_CODEC_CTRL0,
    IC_HSLEN | IC_HSREN, 0);
   sirf_audio_codec_tx_disable(sirf_audio_codec);
  } else
   sirf_audio_codec_rx_disable(sirf_audio_codec);
  break;
 case 130:
 case 131:
 case 132:
  if (playback) {
   sirf_audio_codec_tx_enable(sirf_audio_codec);
   snd_soc_component_update_bits(component, AUDIO_IC_CODEC_CTRL0,
    IC_HSLEN | IC_HSREN, IC_HSLEN | IC_HSREN);
  } else
   sirf_audio_codec_rx_enable(sirf_audio_codec,
    substream->runtime->channels);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
