
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_FANOUT ;
 int nr_cpu_ids ;
 scalar_t__ rcu_fanout_exact ;
 int rcu_fanout_leaf ;
 int rcu_num_lvls ;

__attribute__((used)) static inline void rcu_init_levelspread(int *levelspread, const int *levelcnt)
{
 int i;

 if (rcu_fanout_exact) {
  levelspread[rcu_num_lvls - 1] = rcu_fanout_leaf;
  for (i = rcu_num_lvls - 2; i >= 0; i--)
   levelspread[i] = RCU_FANOUT;
 } else {
  int ccur;
  int cprv;

  cprv = nr_cpu_ids;
  for (i = rcu_num_lvls - 1; i >= 0; i--) {
   ccur = levelcnt[i];
   levelspread[i] = (cprv + ccur - 1) / ccur;
   cprv = ccur;
  }
 }
}
