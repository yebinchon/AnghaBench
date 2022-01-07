
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {int clsh_users; struct snd_soc_component* comp; } ;
struct snd_soc_component {int dummy; } ;


 int WCD9XXX_A_CDC_CLSH_CRC ;
 int WCD9XXX_A_CDC_CLSH_CRC_CLK_EN_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static inline void wcd_enable_clsh_block(struct wcd_clsh_ctrl *ctrl,
      bool enable)
{
 struct snd_soc_component *comp = ctrl->comp;

 if ((enable && ++ctrl->clsh_users == 1) ||
     (!enable && --ctrl->clsh_users == 0))
  snd_soc_component_update_bits(comp, WCD9XXX_A_CDC_CLSH_CRC,
          WCD9XXX_A_CDC_CLSH_CRC_CLK_EN_MASK,
          enable);
 if (ctrl->clsh_users < 0)
  ctrl->clsh_users = 0;
}
