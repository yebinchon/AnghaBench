
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {int openmin; int openmax; int integer; void* max; void* min; scalar_t__ empty; } ;


 void* mul (void*,void*) ;
 int snd_interval_none (struct snd_interval*) ;

void snd_interval_mul(const struct snd_interval *a, const struct snd_interval *b, struct snd_interval *c)
{
 if (a->empty || b->empty) {
  snd_interval_none(c);
  return;
 }
 c->empty = 0;
 c->min = mul(a->min, b->min);
 c->openmin = (a->openmin || b->openmin);
 c->max = mul(a->max, b->max);
 c->openmax = (a->openmax || b->openmax);
 c->integer = (a->integer && b->integer);
}
