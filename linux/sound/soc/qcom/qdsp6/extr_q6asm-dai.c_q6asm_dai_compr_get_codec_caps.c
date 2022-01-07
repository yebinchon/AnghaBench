
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {int dummy; } ;
struct snd_compr_codec_caps {int codec; } ;



 struct snd_compr_codec_caps q6asm_compr_caps ;

__attribute__((used)) static int q6asm_dai_compr_get_codec_caps(struct snd_compr_stream *stream,
       struct snd_compr_codec_caps *codec)
{
 switch (codec->codec) {
 case 128:
  *codec = q6asm_compr_caps;
  break;
 default:
  break;
 }

 return 0;
}
