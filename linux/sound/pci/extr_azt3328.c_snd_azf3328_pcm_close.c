
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_azf3328_codec_data {int * substream; } ;
struct TYPE_2__ {struct snd_azf3328_codec_data* private_data; } ;



__attribute__((used)) static int
snd_azf3328_pcm_close(struct snd_pcm_substream *substream
)
{
 struct snd_azf3328_codec_data *codec =
  substream->runtime->private_data;

 codec->substream = ((void*)0);
 return 0;
}
