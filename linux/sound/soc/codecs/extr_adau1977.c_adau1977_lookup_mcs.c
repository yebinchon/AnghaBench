
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adau1977 {unsigned int sysclk; } ;


 int EINVAL ;

__attribute__((used)) static int adau1977_lookup_mcs(struct adau1977 *adau1977, unsigned int rate,
 unsigned int fs)
{
 unsigned int mcs;







 rate *= 512 >> fs;

 if (adau1977->sysclk % rate != 0)
  return -EINVAL;

 mcs = adau1977->sysclk / rate;


 if (mcs < 1 || mcs > 6 || mcs == 5)
  return -EINVAL;

 mcs = mcs - 1;
 if (mcs == 5)
  mcs = 4;

 return mcs;
}
