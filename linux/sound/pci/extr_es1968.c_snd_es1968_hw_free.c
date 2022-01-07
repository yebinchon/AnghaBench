
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct esschan* private_data; } ;
struct esschan {int * memory; } ;
struct es1968 {int dummy; } ;


 int snd_es1968_free_memory (struct es1968*,int *) ;
 struct es1968* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1968_hw_free(struct snd_pcm_substream *substream)
{
 struct es1968 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct esschan *chan;

 if (runtime->private_data == ((void*)0))
  return 0;
 chan = runtime->private_data;
 if (chan->memory) {
  snd_es1968_free_memory(chip, chan->memory);
  chan->memory = ((void*)0);
 }
 return 0;
}
