
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int DA732X_MCLK_10MHZ ;
 int DA732X_MCLK_20MHZ ;
 int DA732X_MCLK_40MHZ ;
 int DA732X_MCLK_54MHZ ;
 int DA732X_MCLK_RET_0_10MHZ ;
 int DA732X_MCLK_RET_10_20MHZ ;
 int DA732X_MCLK_RET_20_40MHZ ;
 int DA732X_MCLK_RET_40_54MHZ ;
 int DA732X_MCLK_VAL_0_10MHZ ;
 int DA732X_MCLK_VAL_10_20MHZ ;
 int DA732X_MCLK_VAL_20_40MHZ ;
 int DA732X_MCLK_VAL_40_54MHZ ;
 int DA732X_REG_PLL_CTRL ;
 int EINVAL ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static inline int da732x_get_input_div(struct snd_soc_component *component, int sysclk)
{
 int val;
 int ret;

 if (sysclk < DA732X_MCLK_10MHZ) {
  val = DA732X_MCLK_RET_0_10MHZ;
  ret = DA732X_MCLK_VAL_0_10MHZ;
 } else if ((sysclk >= DA732X_MCLK_10MHZ) &&
     (sysclk < DA732X_MCLK_20MHZ)) {
  val = DA732X_MCLK_RET_10_20MHZ;
  ret = DA732X_MCLK_VAL_10_20MHZ;
 } else if ((sysclk >= DA732X_MCLK_20MHZ) &&
     (sysclk < DA732X_MCLK_40MHZ)) {
  val = DA732X_MCLK_RET_20_40MHZ;
  ret = DA732X_MCLK_VAL_20_40MHZ;
 } else if ((sysclk >= DA732X_MCLK_40MHZ) &&
     (sysclk <= DA732X_MCLK_54MHZ)) {
  val = DA732X_MCLK_RET_40_54MHZ;
  ret = DA732X_MCLK_VAL_40_54MHZ;
 } else {
  return -EINVAL;
 }

 snd_soc_component_write(component, DA732X_REG_PLL_CTRL, val);

 return ret;
}
