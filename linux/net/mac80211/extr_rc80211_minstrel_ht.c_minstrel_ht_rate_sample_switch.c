
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct minstrel_rate_stats {scalar_t__ prob_ewma; } ;
struct minstrel_priv {TYPE_1__* hw; } ;
struct minstrel_ht_sta {int* max_tp_rate; int* supported; int sample_rate; int sample_mode; } ;
struct TYPE_2__ {int max_rates; } ;


 int MCS_GROUP_RATES ;
 scalar_t__ MINSTREL_FRAC (int,int) ;
 int MINSTREL_GROUPS_NB ;
 int MINSTREL_SAMPLE_ACTIVE ;
 struct minstrel_rate_stats* minstrel_get_ratestats (struct minstrel_ht_sta*,int) ;
 int minstrel_ht_find_probe_rates (struct minstrel_ht_sta*,int*,int*,int) ;
 int prandom_u32 () ;

__attribute__((used)) static void
minstrel_ht_rate_sample_switch(struct minstrel_priv *mp,
          struct minstrel_ht_sta *mi)
{
 struct minstrel_rate_stats *mrs;
 u16 rates[MINSTREL_GROUPS_NB];
 int n_rates = 0;
 int probe_rate = 0;
 bool faster_rate;
 int i;
 u8 random;





 if (mp->hw->max_rates > 1)
  return;






 mrs = minstrel_get_ratestats(mi, mi->max_tp_rate[0]);
 faster_rate = mrs->prob_ewma > MINSTREL_FRAC(75, 100);
 minstrel_ht_find_probe_rates(mi, rates, &n_rates, faster_rate);
 if (!n_rates && faster_rate)
  minstrel_ht_find_probe_rates(mi, rates, &n_rates, 0);


 if (!n_rates) {
  int g_idx = mi->max_tp_rate[0] / MCS_GROUP_RATES;
  u16 supported = mi->supported[g_idx];

  supported >>= mi->max_tp_rate[0] % MCS_GROUP_RATES;
  for (i = 0; supported; supported >>= 1, i++) {
   if (!(supported & 1))
    continue;

   probe_rate = mi->max_tp_rate[0] + i;
   goto out;
  }

  return;
 }

 i = 0;
 if (n_rates > 1) {
  random = prandom_u32();
  i = random % n_rates;
 }
 probe_rate = rates[i];

out:
 mi->sample_rate = probe_rate;
 mi->sample_mode = MINSTREL_SAMPLE_ACTIVE;
}
