
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_codec {int dummy; } ;
struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 struct sun4i_codec* snd_soc_card_get_drvdata (int ) ;
 int sun4i_codec_start_capture (struct sun4i_codec*) ;
 int sun4i_codec_start_playback (struct sun4i_codec*) ;
 int sun4i_codec_stop_capture (struct sun4i_codec*) ;
 int sun4i_codec_stop_playback (struct sun4i_codec*) ;

__attribute__((used)) static int sun4i_codec_trigger(struct snd_pcm_substream *substream, int cmd,
          struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct sun4i_codec *scodec = snd_soc_card_get_drvdata(rtd->card);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   sun4i_codec_start_playback(scodec);
  else
   sun4i_codec_start_capture(scodec);
  break;

 case 129:
 case 128:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   sun4i_codec_stop_playback(scodec);
  else
   sun4i_codec_stop_capture(scodec);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
