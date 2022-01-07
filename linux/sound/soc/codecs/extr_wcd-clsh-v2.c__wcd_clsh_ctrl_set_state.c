
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {int dummy; } ;






 int wcd_clsh_state_ear (struct wcd_clsh_ctrl*,int,int,int) ;
 int wcd_clsh_state_hph_l (struct wcd_clsh_ctrl*,int,int,int) ;
 int wcd_clsh_state_hph_r (struct wcd_clsh_ctrl*,int,int,int) ;
 int wcd_clsh_state_lo (struct wcd_clsh_ctrl*,int,int,int) ;

__attribute__((used)) static int _wcd_clsh_ctrl_set_state(struct wcd_clsh_ctrl *ctrl, int req_state,
        bool is_enable, int mode)
{
 switch (req_state) {
 case 131:
  wcd_clsh_state_ear(ctrl, req_state, is_enable, mode);
  break;
 case 130:
  wcd_clsh_state_hph_l(ctrl, req_state, is_enable, mode);
  break;
 case 129:
  wcd_clsh_state_hph_r(ctrl, req_state, is_enable, mode);
  break;
  break;
 case 128:
  wcd_clsh_state_lo(ctrl, req_state, is_enable, mode);
  break;
 default:
  break;
 }

 return 0;
}
