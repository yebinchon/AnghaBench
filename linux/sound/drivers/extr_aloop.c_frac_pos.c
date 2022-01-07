
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loopback_pcm {unsigned long long pcm_rate_shift; } ;


 unsigned int HZ ;
 unsigned long long NO_PITCH ;
 unsigned int div_u64 (unsigned long long,unsigned long long) ;

__attribute__((used)) static inline unsigned int frac_pos(struct loopback_pcm *dpcm, unsigned int x)
{
 if (dpcm->pcm_rate_shift == NO_PITCH) {
  return x * HZ;
 } else {
  x = div_u64(dpcm->pcm_rate_shift * (unsigned long long)x * HZ,
       NO_PITCH);
 }
 return x;
}
