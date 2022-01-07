
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {unsigned int max; int openmax; scalar_t__ integer; } ;


 int EINVAL ;
 scalar_t__ snd_interval_checkempty (struct snd_interval*) ;
 int snd_interval_none (struct snd_interval*) ;

__attribute__((used)) static int snd_interval_refine_max(struct snd_interval *i, unsigned int max, int openmax)
{
 int changed = 0;
 if (i->max > max) {
  i->max = max;
  i->openmax = openmax;
  changed = 1;
 } else if (i->max == max && !i->openmax && openmax) {
  i->openmax = 1;
  changed = 1;
 }
 if (i->integer) {
  if (i->openmax) {
   i->max--;
   i->openmax = 0;
  }
 }
 if (snd_interval_checkempty(i)) {
  snd_interval_none(i);
  return -EINVAL;
 }
 return changed;
}
