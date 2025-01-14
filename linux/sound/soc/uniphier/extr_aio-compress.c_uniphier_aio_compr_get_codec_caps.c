
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {int dummy; } ;
struct snd_compr_codec_caps {scalar_t__ codec; } ;


 int EINVAL ;
 scalar_t__ SND_AUDIOCODEC_IEC61937 ;
 struct snd_compr_codec_caps caps_iec ;

__attribute__((used)) static int uniphier_aio_compr_get_codec_caps(struct snd_compr_stream *stream,
          struct snd_compr_codec_caps *codec)
{
 if (codec->codec == SND_AUDIOCODEC_IEC61937)
  *codec = caps_iec;
 else
  return -EINVAL;

 return 0;
}
