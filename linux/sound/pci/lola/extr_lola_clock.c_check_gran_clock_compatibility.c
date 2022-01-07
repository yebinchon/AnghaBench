
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int granularity; } ;


 unsigned int LOLA_GRANULARITY_MAX ;
 unsigned int LOLA_GRANULARITY_MIN ;
 unsigned int LOLA_GRANULARITY_STEP ;
 unsigned int LOLA_MAXFREQ_AT_GRANULARITY_BELOW_MAX ;
 unsigned int LOLA_MAXFREQ_AT_GRANULARITY_MIN ;

__attribute__((used)) static bool check_gran_clock_compatibility(struct lola *chip,
        unsigned int val,
        unsigned int freq)
{
 if (!chip->granularity)
  return 1;

 if (val < LOLA_GRANULARITY_MIN || val > LOLA_GRANULARITY_MAX ||
     (val % LOLA_GRANULARITY_STEP) != 0)
  return 0;

 if (val == LOLA_GRANULARITY_MIN) {
  if (freq > LOLA_MAXFREQ_AT_GRANULARITY_MIN)
   return 0;
 } else if (val < LOLA_GRANULARITY_MAX) {
  if (freq > LOLA_MAXFREQ_AT_GRANULARITY_BELOW_MAX)
   return 0;
 }
 return 1;
}
