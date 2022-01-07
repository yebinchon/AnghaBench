
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {int format; unsigned int channels; } ;







__attribute__((used)) static unsigned int lola_get_format_verb(struct snd_pcm_substream *substream)
{
 unsigned int verb;

 switch (substream->runtime->format) {
 case 130:
  verb = 0x00000000;
  break;
 case 129:
  verb = 0x00000200;
  break;
 case 128:
  verb = 0x00000300;
  break;
 case 131:
  verb = 0x00001300;
  break;
 default:
  return 0;
 }
 verb |= substream->runtime->channels;
 return verb;
}
