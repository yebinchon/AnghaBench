
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct azx_pcm {struct azx* chip; } ;
struct azx_dev {int dummy; } ;
struct azx {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int azx_get_position (struct azx*,struct azx_dev*) ;
 int bytes_to_frames (int ,int ) ;
 struct azx_dev* get_azx_dev (struct snd_pcm_substream*) ;
 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t azx_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct azx_pcm *apcm = snd_pcm_substream_chip(substream);
 struct azx *chip = apcm->chip;
 struct azx_dev *azx_dev = get_azx_dev(substream);
 return bytes_to_frames(substream->runtime,
          azx_get_position(chip, azx_dev));
}
