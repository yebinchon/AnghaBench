
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {int state; } ;



int wcd_clsh_ctrl_get_state(struct wcd_clsh_ctrl *ctrl)
{
 return ctrl->state;
}
