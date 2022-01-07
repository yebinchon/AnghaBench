
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {scalar_t__ min; scalar_t__ max; int openmin; int openmax; scalar_t__ integer; scalar_t__ empty; } ;


 scalar_t__ UINT_MAX ;
 void* div32 (scalar_t__,scalar_t__,unsigned int*) ;
 int snd_interval_none (struct snd_interval*) ;

void snd_interval_div(const struct snd_interval *a, const struct snd_interval *b, struct snd_interval *c)
{
 unsigned int r;
 if (a->empty || b->empty) {
  snd_interval_none(c);
  return;
 }
 c->empty = 0;
 c->min = div32(a->min, b->max, &r);
 c->openmin = (r || a->openmin || b->openmax);
 if (b->min > 0) {
  c->max = div32(a->max, b->min, &r);
  if (r) {
   c->max++;
   c->openmax = 1;
  } else
   c->openmax = (a->openmax || b->openmin);
 } else {
  c->max = UINT_MAX;
  c->openmax = 0;
 }
 c->integer = 0;
}
