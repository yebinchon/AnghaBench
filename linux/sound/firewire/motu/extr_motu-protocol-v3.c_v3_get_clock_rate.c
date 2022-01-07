
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct snd_motu {int dummy; } ;
typedef int reg ;
typedef int __be32 ;


 size_t ARRAY_SIZE (unsigned int*) ;
 int EIO ;
 size_t V3_CLOCK_RATE_MASK ;
 size_t V3_CLOCK_RATE_SHIFT ;
 int V3_CLOCK_STATUS_OFFSET ;
 size_t be32_to_cpu (int ) ;
 unsigned int* snd_motu_clock_rates ;
 int snd_motu_transaction_read (struct snd_motu*,int ,int *,int) ;

__attribute__((used)) static int v3_get_clock_rate(struct snd_motu *motu, unsigned int *rate)
{
 __be32 reg;
 u32 data;
 int err;

 err = snd_motu_transaction_read(motu, V3_CLOCK_STATUS_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return err;
 data = be32_to_cpu(reg);

 data = (data & V3_CLOCK_RATE_MASK) >> V3_CLOCK_RATE_SHIFT;
 if (data >= ARRAY_SIZE(snd_motu_clock_rates))
  return -EIO;

 *rate = snd_motu_clock_rates[data];

 return 0;
}
