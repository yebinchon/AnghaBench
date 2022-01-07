
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool adau1977_check_sysclk(unsigned int mclk, unsigned int base_freq)
{
 unsigned int mcs;

 if (mclk % (base_freq * 128) != 0)
  return 0;

 mcs = mclk / (128 * base_freq);
 if (mcs < 1 || mcs > 6 || mcs == 5)
  return 0;

 return 1;
}
