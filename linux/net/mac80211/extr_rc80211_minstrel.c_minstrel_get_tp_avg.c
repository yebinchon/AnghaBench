
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prob_ewma; } ;
struct minstrel_rate {int perfect_tx_time; TYPE_1__ stats; } ;


 int MINSTREL_FRAC (int,int) ;
 int MINSTREL_TRUNC (int) ;

int minstrel_get_tp_avg(struct minstrel_rate *mr, int prob_ewma)
{
 int usecs;

 usecs = mr->perfect_tx_time;
 if (!usecs)
  usecs = 1000000;


 if (mr->stats.prob_ewma < MINSTREL_FRAC(10, 100))
  return 0;

 if (prob_ewma > MINSTREL_FRAC(90, 100))
  return MINSTREL_TRUNC(100000 * (MINSTREL_FRAC(90, 100) / usecs));
 else
  return MINSTREL_TRUNC(100000 * (prob_ewma / usecs));
}
