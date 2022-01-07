
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_motu {int dummy; } ;
typedef int reg ;
typedef int __be32 ;


 int V3_CLOCK_STATUS_OFFSET ;
 int V3_FETCH_PCM_FRAMES ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int snd_motu_transaction_read (struct snd_motu*,int ,int *,int) ;
 int snd_motu_transaction_write (struct snd_motu*,int ,int *,int) ;

__attribute__((used)) static int v3_switch_fetching_mode(struct snd_motu *motu, bool enable)
{
 __be32 reg;
 u32 data;
 int err;

 err = snd_motu_transaction_read(motu, V3_CLOCK_STATUS_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return 0;
 data = be32_to_cpu(reg);

 if (enable)
  data |= V3_FETCH_PCM_FRAMES;
 else
  data &= ~V3_FETCH_PCM_FRAMES;

 reg = cpu_to_be32(data);
 return snd_motu_transaction_write(motu, V3_CLOCK_STATUS_OFFSET, &reg,
       sizeof(reg));
}
