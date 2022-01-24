#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wcd_clsh_ctrl {struct snd_soc_component* comp; int /*<<< orphan*/  state; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct wcd_clsh_ctrl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WCD_CLSH_STATE_IDLE ; 
 struct wcd_clsh_ctrl* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct wcd_clsh_ctrl *FUNC2(struct snd_soc_component *comp,
					  int version)
{
	struct wcd_clsh_ctrl *ctrl;

	ctrl = FUNC1(sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		return FUNC0(-ENOMEM);

	ctrl->state = WCD_CLSH_STATE_IDLE;
	ctrl->comp = comp;

	return ctrl;
}