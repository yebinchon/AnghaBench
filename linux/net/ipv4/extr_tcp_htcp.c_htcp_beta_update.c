
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct htcp {int maxB; int old_maxB; int beta; int modeswitch; } ;


 void* BETA_MAX ;
 void* BETA_MIN ;
 int between (int,int,int) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ use_bandwidth_switch ;

__attribute__((used)) static inline void htcp_beta_update(struct htcp *ca, u32 minRTT, u32 maxRTT)
{
 if (use_bandwidth_switch) {
  u32 maxB = ca->maxB;
  u32 old_maxB = ca->old_maxB;

  ca->old_maxB = ca->maxB;
  if (!between(5 * maxB, 4 * old_maxB, 6 * old_maxB)) {
   ca->beta = BETA_MIN;
   ca->modeswitch = 0;
   return;
  }
 }

 if (ca->modeswitch && minRTT > msecs_to_jiffies(10) && maxRTT) {
  ca->beta = (minRTT << 7) / maxRTT;
  if (ca->beta < BETA_MIN)
   ca->beta = BETA_MIN;
  else if (ca->beta > BETA_MAX)
   ca->beta = BETA_MAX;
 } else {
  ca->beta = BETA_MIN;
  ca->modeswitch = 1;
 }
}
