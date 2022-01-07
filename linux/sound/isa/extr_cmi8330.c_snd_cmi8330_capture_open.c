
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int private_data; } ;
struct snd_cmi8330 {TYPE_1__* streams; } ;
struct TYPE_2__ {int (* open ) (struct snd_pcm_substream*) ;int private_data; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 struct snd_cmi8330* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cmi8330_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_cmi8330 *chip = snd_pcm_substream_chip(substream);


 substream->private_data = chip->streams[SNDRV_PCM_STREAM_CAPTURE].private_data;
 return chip->streams[SNDRV_PCM_STREAM_CAPTURE].open(substream);
}
