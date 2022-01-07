
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl6231_pll_code {int dummy; } ;


 int EINVAL ;
 unsigned int const RT5677_PLL_INP_MIN ;
 int rl6231_pll_calc (unsigned int const,unsigned int const,struct rl6231_pll_code*) ;

__attribute__((used)) static int rt5677_pll_calc(const unsigned int freq_in,
 const unsigned int freq_out, struct rl6231_pll_code *pll_code)
{
 if (RT5677_PLL_INP_MIN > freq_in)
  return -EINVAL;

 return rl6231_pll_calc(freq_in, freq_out, pll_code);
}
