
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_motu {int * spec; } ;
typedef int reg ;
typedef int __be32 ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 int V2_CLOCK_RATE_MASK ;
 int V2_CLOCK_RATE_SHIFT ;
 int V2_CLOCK_STATUS_OFFSET ;
 int V2_CLOCK_TRAVELER_FETCH_DISABLE ;
 int V2_CLOCK_TRAVELER_FETCH_ENABLE ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 unsigned int* snd_motu_clock_rates ;
 int snd_motu_spec_traveler ;
 int snd_motu_transaction_read (struct snd_motu*,int ,int *,int) ;
 int snd_motu_transaction_write (struct snd_motu*,int ,int *,int) ;

__attribute__((used)) static int v2_set_clock_rate(struct snd_motu *motu, unsigned int rate)
{
 __be32 reg;
 u32 data;
 int i;
 int err;

 for (i = 0; i < ARRAY_SIZE(snd_motu_clock_rates); ++i) {
  if (snd_motu_clock_rates[i] == rate)
   break;
 }
 if (i == ARRAY_SIZE(snd_motu_clock_rates))
  return -EINVAL;

 err = snd_motu_transaction_read(motu, V2_CLOCK_STATUS_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return err;
 data = be32_to_cpu(reg);

 data &= ~V2_CLOCK_RATE_MASK;
 data |= i << V2_CLOCK_RATE_SHIFT;

 if (motu->spec == &snd_motu_spec_traveler) {
  data &= ~V2_CLOCK_TRAVELER_FETCH_ENABLE;
  data |= V2_CLOCK_TRAVELER_FETCH_DISABLE;
 }

 reg = cpu_to_be32(data);
 return snd_motu_transaction_write(motu, V2_CLOCK_STATUS_OFFSET, &reg,
       sizeof(reg));
}
