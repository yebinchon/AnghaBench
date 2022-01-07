
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd_clsh_ctrl {int dummy; } ;


 int kfree (struct wcd_clsh_ctrl*) ;

void wcd_clsh_ctrl_free(struct wcd_clsh_ctrl *ctrl)
{
 kfree(ctrl);
}
