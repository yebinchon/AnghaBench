
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct illinois {int rtt_above; scalar_t__ rtt_low; int alpha; } ;


 int ALPHA_MAX ;
 int ALPHA_MIN ;
 scalar_t__ theta ;

__attribute__((used)) static u32 alpha(struct illinois *ca, u32 da, u32 dm)
{
 u32 d1 = dm / 100;

 if (da <= d1) {

  if (!ca->rtt_above)
   return ALPHA_MAX;




  if (++ca->rtt_low < theta)
   return ca->alpha;

  ca->rtt_low = 0;
  ca->rtt_above = 0;
  return ALPHA_MAX;
 }

 ca->rtt_above = 1;
 dm -= d1;
 da -= d1;
 return (dm * ALPHA_MAX) /
  (dm + (da * (ALPHA_MAX - ALPHA_MIN)) / ALPHA_MIN);
}
