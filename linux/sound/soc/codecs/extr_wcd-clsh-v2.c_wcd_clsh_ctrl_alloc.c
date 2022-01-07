
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {struct snd_soc_component* comp; int state; } ;
struct snd_soc_component {int dummy; } ;


 int ENOMEM ;
 struct wcd_clsh_ctrl* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int WCD_CLSH_STATE_IDLE ;
 struct wcd_clsh_ctrl* kzalloc (int,int ) ;

struct wcd_clsh_ctrl *wcd_clsh_ctrl_alloc(struct snd_soc_component *comp,
       int version)
{
 struct wcd_clsh_ctrl *ctrl;

 ctrl = kzalloc(sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return ERR_PTR(-ENOMEM);

 ctrl->state = WCD_CLSH_STATE_IDLE;
 ctrl->comp = comp;

 return ctrl;
}
