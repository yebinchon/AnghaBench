
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme96 {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 struct rme96* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme96_capture_ptr (struct rme96*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_rme96_capture_pointer(struct snd_pcm_substream *substream)
{
 struct rme96 *rme96 = snd_pcm_substream_chip(substream);
 return snd_rme96_capture_ptr(rme96);
}
