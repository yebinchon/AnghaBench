
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_pll_freq_available(unsigned int source, unsigned int target)
{
 unsigned int Ndiv;

 if (source == 0 || target == 0)
  return 0;


 target *= 4;
 Ndiv = target / source;

 if (Ndiv < 6) {
  source >>= 1;
  Ndiv = target / source;
 }

 if ((Ndiv < 6) || (Ndiv > 12))
  return 0;

 return 1;
}
