
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_motu {int dummy; } ;
typedef int reg ;
typedef int __be32 ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINTR ;
 int EINVAL ;
 int V3_CLOCK_RATE_MASK ;
 int V3_CLOCK_RATE_SHIFT ;
 int V3_CLOCK_STATUS_OFFSET ;
 int V3_FETCH_PCM_FRAMES ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 scalar_t__ msleep_interruptible (int) ;
 unsigned int* snd_motu_clock_rates ;
 int snd_motu_transaction_read (struct snd_motu*,int ,int *,int) ;
 int snd_motu_transaction_write (struct snd_motu*,int ,int *,int) ;

__attribute__((used)) static int v3_set_clock_rate(struct snd_motu *motu, unsigned int rate)
{
 __be32 reg;
 u32 data;
 bool need_to_wait;
 int i, err;

 for (i = 0; i < ARRAY_SIZE(snd_motu_clock_rates); ++i) {
  if (snd_motu_clock_rates[i] == rate)
   break;
 }
 if (i == ARRAY_SIZE(snd_motu_clock_rates))
  return -EINVAL;

 err = snd_motu_transaction_read(motu, V3_CLOCK_STATUS_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return err;
 data = be32_to_cpu(reg);

 data &= ~(V3_CLOCK_RATE_MASK | V3_FETCH_PCM_FRAMES);
 data |= i << V3_CLOCK_RATE_SHIFT;

 need_to_wait = data != be32_to_cpu(reg);

 reg = cpu_to_be32(data);
 err = snd_motu_transaction_write(motu, V3_CLOCK_STATUS_OFFSET, &reg,
      sizeof(reg));
 if (err < 0)
  return err;

 if (need_to_wait) {

  if (msleep_interruptible(4000) > 0)
   return -EINTR;
 }

 return 0;
}
