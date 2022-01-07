
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int sido_voltage; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
typedef enum wcd9335_sido_voltage { ____Placeholder_wcd9335_sido_voltage } wcd9335_sido_voltage ;


 int WCD9335_ANA_BUCK_CTL ;
 int WCD9335_ANA_BUCK_CTL_RAMP_START_DISABLE ;
 int WCD9335_ANA_BUCK_CTL_RAMP_START_ENABLE ;
 int WCD9335_ANA_BUCK_CTL_RAMP_START_MASK ;
 int WCD9335_ANA_BUCK_VOUT_D ;
 int WCD9335_ANA_BUCK_VOUT_MASK ;
 int WCD9335_CALCULATE_VOUT_D (int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void wcd9335_codec_apply_sido_voltage(struct wcd9335_codec *wcd,
          enum wcd9335_sido_voltage req_mv)
{
 struct snd_soc_component *comp = wcd->component;
 int vout_d_val;

 if (req_mv == wcd->sido_voltage)
  return;


 vout_d_val = WCD9335_CALCULATE_VOUT_D(req_mv) &
   WCD9335_ANA_BUCK_VOUT_MASK;
 snd_soc_component_write(comp, WCD9335_ANA_BUCK_VOUT_D, vout_d_val);
 snd_soc_component_update_bits(comp, WCD9335_ANA_BUCK_CTL,
    WCD9335_ANA_BUCK_CTL_RAMP_START_MASK,
    WCD9335_ANA_BUCK_CTL_RAMP_START_ENABLE);


 usleep_range(1000, 1100);
 wcd->sido_voltage = req_mv;
 snd_soc_component_update_bits(comp, WCD9335_ANA_BUCK_CTL,
    WCD9335_ANA_BUCK_CTL_RAMP_START_MASK,
    WCD9335_ANA_BUCK_CTL_RAMP_START_DISABLE);
}
