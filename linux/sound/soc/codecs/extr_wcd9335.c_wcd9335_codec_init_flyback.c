
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int WCD9335_HPH_CONST_SEL_L_BYPASS ;
 int WCD9335_HPH_CONST_SEL_L_MASK ;
 int WCD9335_HPH_L_EN ;
 int WCD9335_HPH_R_EN ;
 int WCD9335_RX_BIAS_FLYB_BUFF ;
 int WCD9335_RX_BIAS_FLYB_I_0P0_UA ;
 int WCD9335_RX_BIAS_FLYB_VNEG_5_UA_MASK ;
 int WCD9335_RX_BIAS_FLYB_VPOS_5_UA_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void wcd9335_codec_init_flyback(struct snd_soc_component *component)
{
 snd_soc_component_update_bits(component, WCD9335_HPH_L_EN,
     WCD9335_HPH_CONST_SEL_L_MASK,
     WCD9335_HPH_CONST_SEL_L_BYPASS);
 snd_soc_component_update_bits(component, WCD9335_HPH_R_EN,
     WCD9335_HPH_CONST_SEL_L_MASK,
     WCD9335_HPH_CONST_SEL_L_BYPASS);
 snd_soc_component_update_bits(component, WCD9335_RX_BIAS_FLYB_BUFF,
     WCD9335_RX_BIAS_FLYB_VPOS_5_UA_MASK,
     WCD9335_RX_BIAS_FLYB_I_0P0_UA);
 snd_soc_component_update_bits(component, WCD9335_RX_BIAS_FLYB_BUFF,
     WCD9335_RX_BIAS_FLYB_VNEG_5_UA_MASK,
     WCD9335_RX_BIAS_FLYB_I_0P0_UA);
}
