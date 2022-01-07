
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_dice* private_data; } ;
struct snd_dice {int dummy; } ;


 int snd_dice_stream_lock_release (struct snd_dice*) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_dice *dice = substream->private_data;

 snd_dice_stream_lock_release(dice);

 return 0;
}
