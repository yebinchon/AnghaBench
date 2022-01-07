
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int sido_input_src; } ;
struct snd_soc_component {int dev; } ;


 int SIDO_SOURCE_RCO_BG ;
 int WCD9335_ANA_BUCK_CTL ;
 int WCD9335_ANA_BUCK_CTL_VOUT_D_IREF_EXT ;
 int WCD9335_ANA_BUCK_CTL_VOUT_D_IREF_MASK ;
 int WCD9335_ANA_BUCK_CTL_VOUT_D_VREF_EXT ;
 int WCD9335_ANA_BUCK_CTL_VOUT_D_VREF_MASK ;
 int WCD9335_ANA_RCO ;
 int WCD9335_ANA_RCO_BG_ENABLE ;
 int WCD9335_ANA_RCO_BG_EN_MASK ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void wcd9335_enable_sido_buck(struct snd_soc_component *component)
{
 struct wcd9335_codec *wcd = dev_get_drvdata(component->dev);

 snd_soc_component_update_bits(component, WCD9335_ANA_RCO,
     WCD9335_ANA_RCO_BG_EN_MASK,
     WCD9335_ANA_RCO_BG_ENABLE);
 snd_soc_component_update_bits(component, WCD9335_ANA_BUCK_CTL,
     WCD9335_ANA_BUCK_CTL_VOUT_D_IREF_MASK,
     WCD9335_ANA_BUCK_CTL_VOUT_D_IREF_EXT);

 usleep_range(100, 110);
 snd_soc_component_update_bits(component, WCD9335_ANA_BUCK_CTL,
     WCD9335_ANA_BUCK_CTL_VOUT_D_VREF_MASK,
     WCD9335_ANA_BUCK_CTL_VOUT_D_VREF_EXT);

 usleep_range(100, 110);
 wcd->sido_input_src = SIDO_SOURCE_RCO_BG;
}
