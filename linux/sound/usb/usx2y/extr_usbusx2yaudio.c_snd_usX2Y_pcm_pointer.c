
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usX2Y_substream {int hwptr_done; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {struct snd_usX2Y_substream* private_data; } ;



__attribute__((used)) static snd_pcm_uframes_t snd_usX2Y_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_usX2Y_substream *subs = substream->runtime->private_data;
 return subs->hwptr_done;
}
