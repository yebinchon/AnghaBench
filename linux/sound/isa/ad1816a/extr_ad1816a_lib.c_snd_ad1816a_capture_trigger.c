
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ad1816a {int dummy; } ;


 int AD1816A_CAPTURE_ENABLE ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_ad1816a_trigger (struct snd_ad1816a*,int ,int ,int,int) ;
 struct snd_ad1816a* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ad1816a_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_ad1816a *chip = snd_pcm_substream_chip(substream);
 return snd_ad1816a_trigger(chip, AD1816A_CAPTURE_ENABLE,
       SNDRV_PCM_STREAM_CAPTURE, cmd, 1);
}
