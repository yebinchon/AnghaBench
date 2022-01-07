
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hw {int dummy; } ;
typedef int s8 ;


 int MAKE_WM8775_ADDR (int ,int) ;
 int MAKE_WM8775_DATA (int) ;
 int MIC_BOOST_0DB ;
 int MIC_BOOST_STEPS_PER_DB ;
 int WM8775_AADCL ;
 int WM8775_AADCR ;
 int WM8775_ADCMC ;
 int hw20k2_i2c_write (struct hw*,int ,int ) ;

__attribute__((used)) static void hw_wm8775_input_select(struct hw *hw, u8 input, s8 gain_in_db)
{
 u32 adcmc, gain;

 if (input > 3)
  input = 3;

 adcmc = ((u32)1 << input) | 0x100;

 hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_ADCMC, adcmc),
    MAKE_WM8775_DATA(adcmc));

 if (gain_in_db < -103)
  gain_in_db = -103;
 if (gain_in_db > 24)
  gain_in_db = 24;

 gain = gain_in_db * MIC_BOOST_STEPS_PER_DB + MIC_BOOST_0DB;

 hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_AADCL, gain),
    MAKE_WM8775_DATA(gain));

 hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_AADCR, gain),
    MAKE_WM8775_DATA(gain));
}
