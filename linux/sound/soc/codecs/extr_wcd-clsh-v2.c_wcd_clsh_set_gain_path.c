
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {struct snd_soc_component* comp; } ;
struct snd_soc_component {int dummy; } ;






 int WCD9XXX_HPH_CONST_SEL_BYPASS ;
 int WCD9XXX_HPH_CONST_SEL_HQ_PATH ;
 int WCD9XXX_HPH_CONST_SEL_LP_PATH ;
 int WCD9XXX_HPH_CONST_SEL_L_MASK ;
 int WCD9XXX_HPH_L_EN ;
 int WCD9XXX_HPH_R_EN ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static void wcd_clsh_set_gain_path(struct wcd_clsh_ctrl *ctrl, int mode)
{
 struct snd_soc_component *comp = ctrl->comp;
 int val = 0;

 switch (mode) {
 case 128:
 case 131:
  val = WCD9XXX_HPH_CONST_SEL_BYPASS;
  break;
 case 130:
  val = WCD9XXX_HPH_CONST_SEL_HQ_PATH;
  break;
 case 129:
  val = WCD9XXX_HPH_CONST_SEL_LP_PATH;
  break;
 }

 snd_soc_component_update_bits(comp, WCD9XXX_HPH_L_EN,
     WCD9XXX_HPH_CONST_SEL_L_MASK,
     val);

 snd_soc_component_update_bits(comp, WCD9XXX_HPH_R_EN,
     WCD9XXX_HPH_CONST_SEL_L_MASK,
     val);
}
