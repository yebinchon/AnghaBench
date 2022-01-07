
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_compr_stream {int dummy; } ;
struct snd_compr_codec_caps {int codec; int num_descriptors; TYPE_1__* descriptor; } ;
struct TYPE_2__ {int max_ch; int* bit_rate; int num_bitrates; int formats; int modes; int profiles; } ;


 int EINVAL ;
 int SND_AUDIOCHANMODE_MP3_STEREO ;



__attribute__((used)) static int
sprd_platform_compr_get_codec_caps(struct snd_compr_stream *cstream,
       struct snd_compr_codec_caps *codec)
{
 switch (codec->codec) {
 case 128:
  codec->num_descriptors = 2;
  codec->descriptor[0].max_ch = 2;
  codec->descriptor[0].bit_rate[0] = 320;
  codec->descriptor[0].bit_rate[1] = 128;
  codec->descriptor[0].num_bitrates = 2;
  codec->descriptor[0].profiles = 0;
  codec->descriptor[0].modes = SND_AUDIOCHANMODE_MP3_STEREO;
  codec->descriptor[0].formats = 0;
  break;

 case 129:
  codec->num_descriptors = 2;
  codec->descriptor[1].max_ch = 2;
  codec->descriptor[1].bit_rate[0] = 320;
  codec->descriptor[1].bit_rate[1] = 128;
  codec->descriptor[1].num_bitrates = 2;
  codec->descriptor[1].profiles = 0;
  codec->descriptor[1].modes = 0;
  codec->descriptor[1].formats = 0;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
