
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned long rate; unsigned long period_size; int timer_resolution; } ;


 unsigned long gcd (unsigned long,unsigned long) ;
 int pcm_err (int ,char*,unsigned long,unsigned long) ;
 scalar_t__ snd_BUG_ON (int) ;

void snd_pcm_timer_resolution_change(struct snd_pcm_substream *substream)
{
 unsigned long rate, mult, fsize, l, post;
 struct snd_pcm_runtime *runtime = substream->runtime;

 mult = 1000000000;
 rate = runtime->rate;
 if (snd_BUG_ON(!rate))
  return;
 l = gcd(mult, rate);
 mult /= l;
 rate /= l;
 fsize = runtime->period_size;
 if (snd_BUG_ON(!fsize))
  return;
 l = gcd(rate, fsize);
 rate /= l;
 fsize /= l;
 post = 1;
 while ((mult * fsize) / fsize != mult) {
  mult /= 2;
  post *= 2;
 }
 if (rate == 0) {
  pcm_err(substream->pcm,
   "pcm timer resolution out of range (rate = %u, period_size = %lu)\n",
   runtime->rate, runtime->period_size);
  runtime->timer_resolution = -1;
  return;
 }
 runtime->timer_resolution = (mult * fsize / rate) * post;
}
