
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {int buck_users; struct snd_soc_component* comp; } ;
struct snd_soc_component {int dummy; } ;


 int WCD9XXX_A_ANA_RX_SUPPLIES ;
 int WCD9XXX_A_ANA_RX_VPOS_EN_MASK ;
 int WCD9XXX_A_ANA_RX_VPOS_EN_SHIFT ;
 scalar_t__ WCD_USLEEP_RANGE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int usleep_range (int,scalar_t__) ;

__attribute__((used)) static void wcd_clsh_buck_ctrl(struct wcd_clsh_ctrl *ctrl,
          int mode,
          bool enable)
{
 struct snd_soc_component *comp = ctrl->comp;


 if ((enable && (++ctrl->buck_users == 1)) ||
    (!enable && (--ctrl->buck_users == 0)))
  snd_soc_component_update_bits(comp, WCD9XXX_A_ANA_RX_SUPPLIES,
    WCD9XXX_A_ANA_RX_VPOS_EN_MASK,
    enable << WCD9XXX_A_ANA_RX_VPOS_EN_SHIFT);




 usleep_range(500, 500 + WCD_USLEEP_RANGE);
}
