
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nau8822_pll {int mclk_scaler; int pre_factor; int pll_int; int pll_frac; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int NAU_PLL_FREQ_MAX ;
 int NAU_PLL_FREQ_MIN ;
 int NAU_PLL_OPTOP_MIN ;
 unsigned int NAU_PLL_REF_MAX ;
 unsigned int NAU_PLL_REF_MIN ;
 int div_u64 (int,unsigned int) ;
 int* nau8822_mclk_scaler ;

__attribute__((used)) static int nau8822_calc_pll(unsigned int pll_in, unsigned int fs,
    struct nau8822_pll *pll_param)
{
 u64 f2, f2_max, pll_ratio;
 int i, scal_sel;

 if (pll_in > NAU_PLL_REF_MAX || pll_in < NAU_PLL_REF_MIN)
  return -EINVAL;
 f2_max = 0;
 scal_sel = ARRAY_SIZE(nau8822_mclk_scaler);

 for (i = 0; i < scal_sel; i++) {
  f2 = 256 * fs * 4 * nau8822_mclk_scaler[i] / 10;
  if (f2 > NAU_PLL_FREQ_MIN && f2 < NAU_PLL_FREQ_MAX &&
   f2_max < f2) {
   f2_max = f2;
   scal_sel = i;
  }
 }

 if (ARRAY_SIZE(nau8822_mclk_scaler) == scal_sel)
  return -EINVAL;
 pll_param->mclk_scaler = scal_sel;
 f2 = f2_max;




 pll_ratio = div_u64(f2 << 28, pll_in);
 pll_param->pre_factor = 0;
 if (((pll_ratio >> 28) & 0xF) < NAU_PLL_OPTOP_MIN) {
  pll_ratio <<= 1;
  pll_param->pre_factor = 1;
 }
 pll_param->pll_int = (pll_ratio >> 28) & 0xF;
 pll_param->pll_frac = ((pll_ratio & 0xFFFFFFF) >> 4);

 return 0;
}
