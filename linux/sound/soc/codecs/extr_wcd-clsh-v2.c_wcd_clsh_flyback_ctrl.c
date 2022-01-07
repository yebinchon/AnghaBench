
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {int flyback_users; struct snd_soc_component* comp; } ;
struct snd_soc_component {int dummy; } ;


 int WCD9XXX_A_ANA_RX_SUPPLIES ;
 int WCD9XXX_A_ANA_RX_VNEG_EN_MASK ;
 int WCD9XXX_A_ANA_RX_VNEG_EN_SHIFT ;
 int WCD_USLEEP_RANGE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void wcd_clsh_flyback_ctrl(struct wcd_clsh_ctrl *ctrl,
      int mode,
      bool enable)
{
 struct snd_soc_component *comp = ctrl->comp;


 if ((enable && (++ctrl->flyback_users == 1)) ||
    (!enable && (--ctrl->flyback_users == 0))) {
  snd_soc_component_update_bits(comp, WCD9XXX_A_ANA_RX_SUPPLIES,
    WCD9XXX_A_ANA_RX_VNEG_EN_MASK,
    enable << WCD9XXX_A_ANA_RX_VNEG_EN_SHIFT);

  usleep_range(100, 110);
 }




 usleep_range(500, 500 + WCD_USLEEP_RANGE);
}
