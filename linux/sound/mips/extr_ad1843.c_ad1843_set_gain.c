
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ad1843 {int dummy; } ;
struct ad1843_gain {int rfield; TYPE_1__* lfield; int rmute; TYPE_1__* lmute; scalar_t__ negative; } ;
struct TYPE_2__ {int nbits; } ;


 struct ad1843_gain** ad1843_gain ;
 int ad1843_get_gain (struct snd_ad1843*,int) ;
 int ad1843_write_multi (struct snd_ad1843*,int,TYPE_1__*,int,int ,int) ;

int ad1843_set_gain(struct snd_ad1843 *ad1843, int id, int newval)
{
 const struct ad1843_gain *gp = ad1843_gain[id];
 unsigned short mask = (1 << gp->lfield->nbits) - 1;

 int lg = (newval >> 0) & mask;
 int rg = (newval >> 8) & mask;
 int lm = (lg == 0) ? 1 : 0;
 int rm = (rg == 0) ? 1 : 0;

 if (gp->negative) {
  lg = mask - lg;
  rg = mask - rg;
 }
 if (gp->lmute)
  ad1843_write_multi(ad1843, 2, gp->lmute, lm, gp->rmute, rm);
 ad1843_write_multi(ad1843, 2, gp->lfield, lg, gp->rfield, rg);
 return ad1843_get_gain(ad1843, id);
}
