
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct nm256 {int * streams; } ;


 int EBUSY ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ snd_nm256_acquire_irq (struct nm256*) ;
 int snd_nm256_capture ;
 int snd_nm256_setup_stream (struct nm256*,int *,struct snd_pcm_substream*,int *) ;
 struct nm256* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_nm256_capture_open(struct snd_pcm_substream *substream)
{
 struct nm256 *chip = snd_pcm_substream_chip(substream);

 if (snd_nm256_acquire_irq(chip) < 0)
  return -EBUSY;
 snd_nm256_setup_stream(chip, &chip->streams[SNDRV_PCM_STREAM_CAPTURE],
          substream, &snd_nm256_capture);
 return 0;
}
