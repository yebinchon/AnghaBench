
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int rme9652_hw_pointer (struct snd_rme9652*) ;
 struct snd_rme9652* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_rme9652_hw_pointer(struct snd_pcm_substream *substream)
{
 struct snd_rme9652 *rme9652 = snd_pcm_substream_chip(substream);
 return rme9652_hw_pointer(rme9652);
}
