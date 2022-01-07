
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {int state; int mode; struct snd_soc_component* comp; } ;
struct snd_soc_component {int dev; } ;
typedef enum wcd_clsh_mode { ____Placeholder_wcd_clsh_mode } wcd_clsh_mode ;
typedef enum wcd_clsh_event { ____Placeholder_wcd_clsh_event } wcd_clsh_event ;


 int CLSH_REQ_DISABLE ;
 int CLSH_REQ_ENABLE ;
 int EINVAL ;


 int _wcd_clsh_ctrl_set_state (struct wcd_clsh_ctrl*,int,int ,int) ;
 int dev_err (int ,char*) ;
 int wcd_clsh_is_state_valid (int) ;

int wcd_clsh_ctrl_set_state(struct wcd_clsh_ctrl *ctrl,
       enum wcd_clsh_event clsh_event,
       int nstate,
       enum wcd_clsh_mode mode)
{
 struct snd_soc_component *comp = ctrl->comp;

 if (nstate == ctrl->state)
  return 0;

 if (!wcd_clsh_is_state_valid(nstate)) {
  dev_err(comp->dev, "Class-H not a valid new state:\n");
  return -EINVAL;
 }

 switch (clsh_event) {
 case 128:
  _wcd_clsh_ctrl_set_state(ctrl, nstate, CLSH_REQ_ENABLE, mode);
  break;
 case 129:
  _wcd_clsh_ctrl_set_state(ctrl, nstate, CLSH_REQ_DISABLE, mode);
  break;
 }

 ctrl->state = nstate;
 ctrl->mode = mode;

 return 0;
}
