
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_bt87x {int dummy; } ;


 int EINVAL ;


 int snd_bt87x_start (struct snd_bt87x*) ;
 int snd_bt87x_stop (struct snd_bt87x*) ;
 struct snd_bt87x* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_bt87x_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_bt87x *chip = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 129:
  return snd_bt87x_start(chip);
 case 128:
  return snd_bt87x_stop(chip);
 default:
  return -EINVAL;
 }
}
