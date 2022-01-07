
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int rate; int period_size; } ;



__attribute__((used)) static int period_to_usecs(struct snd_pcm_runtime *runtime)
{
 int usecs;

 if (! runtime->rate)
  return -1;


 usecs = (750000 / runtime->rate) * runtime->period_size;
 usecs += ((750000 % runtime->rate) * runtime->period_size) /
  runtime->rate;

 return usecs;
}
