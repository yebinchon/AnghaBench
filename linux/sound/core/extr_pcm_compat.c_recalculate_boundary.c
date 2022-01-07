
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int buffer_size; } ;
typedef int snd_pcm_uframes_t ;



__attribute__((used)) static snd_pcm_uframes_t recalculate_boundary(struct snd_pcm_runtime *runtime)
{
 snd_pcm_uframes_t boundary;

 if (! runtime->buffer_size)
  return 0;
 boundary = runtime->buffer_size;
 while (boundary * 2 <= 0x7fffffffUL - runtime->buffer_size)
  boundary *= 2;
 return boundary;
}
