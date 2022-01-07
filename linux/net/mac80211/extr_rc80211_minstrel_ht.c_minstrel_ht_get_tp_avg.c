
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct minstrel_ht_sta {int overhead; } ;
struct TYPE_2__ {unsigned int* duration; unsigned int shift; } ;


 int MINSTREL_CCK_GROUP ;
 int MINSTREL_FRAC (int,int) ;
 int MINSTREL_TRUNC (int) ;
 int minstrel_ht_avg_ampdu_len (struct minstrel_ht_sta*) ;
 TYPE_1__* minstrel_mcs_groups ;

int
minstrel_ht_get_tp_avg(struct minstrel_ht_sta *mi, int group, int rate,
         int prob_ewma)
{
 unsigned int nsecs = 0;


 if (prob_ewma < MINSTREL_FRAC(10, 100))
  return 0;

 if (group != MINSTREL_CCK_GROUP)
  nsecs = 1000 * mi->overhead / minstrel_ht_avg_ampdu_len(mi);

 nsecs += minstrel_mcs_groups[group].duration[rate] <<
   minstrel_mcs_groups[group].shift;






 if (prob_ewma > MINSTREL_FRAC(90, 100))
  return MINSTREL_TRUNC(100000 * ((MINSTREL_FRAC(90, 100) * 1000)
              / nsecs));
 else
  return MINSTREL_TRUNC(100000 * ((prob_ewma * 1000) / nsecs));
}
