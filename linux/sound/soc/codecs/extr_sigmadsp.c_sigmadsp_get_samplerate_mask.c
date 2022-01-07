
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct sigmadsp {TYPE_1__ rate_constraints; } ;


 unsigned int BIT (int) ;
 int sigmadsp_rate_to_index (struct sigmadsp*,unsigned int) ;

__attribute__((used)) static unsigned int sigmadsp_get_samplerate_mask(struct sigmadsp *sigmadsp,
 unsigned int samplerate)
{
 int samplerate_index;

 if (samplerate == 0)
  return 0;

 if (sigmadsp->rate_constraints.count) {
  samplerate_index = sigmadsp_rate_to_index(sigmadsp, samplerate);
  if (samplerate_index < 0)
   return 0;

  return BIT(samplerate_index);
 } else {
  return ~0;
 }
}
