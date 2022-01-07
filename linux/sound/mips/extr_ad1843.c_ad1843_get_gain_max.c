
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ad1843 {int dummy; } ;
struct ad1843_gain {int lmute; TYPE_1__* lfield; } ;
struct TYPE_2__ {int nbits; } ;


 struct ad1843_gain** ad1843_gain ;

int ad1843_get_gain_max(struct snd_ad1843 *ad1843, int id)
{
 const struct ad1843_gain *gp = ad1843_gain[id];
 int ret;

 ret = (1 << gp->lfield->nbits);
 if (!gp->lmute)
  ret -= 1;
 return ret;
}
