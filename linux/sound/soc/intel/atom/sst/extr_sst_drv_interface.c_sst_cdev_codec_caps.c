
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_codec_caps {scalar_t__ codec; } ;


 int EINVAL ;
 scalar_t__ SND_AUDIOCODEC_AAC ;
 scalar_t__ SND_AUDIOCODEC_MP3 ;
 struct snd_compr_codec_caps caps_aac ;
 struct snd_compr_codec_caps caps_mp3 ;

__attribute__((used)) static int sst_cdev_codec_caps(struct snd_compr_codec_caps *codec)
{
 if (codec->codec == SND_AUDIOCODEC_MP3)
  *codec = caps_mp3;
 else if (codec->codec == SND_AUDIOCODEC_AAC)
  *codec = caps_aac;
 else
  return -EINVAL;

 return 0;
}
