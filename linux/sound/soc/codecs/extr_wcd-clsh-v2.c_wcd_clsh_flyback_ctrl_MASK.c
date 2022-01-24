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
struct wcd_clsh_ctrl {int flyback_users; struct snd_soc_component* comp; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCD9XXX_A_ANA_RX_SUPPLIES ; 
 int /*<<< orphan*/  WCD9XXX_A_ANA_RX_VNEG_EN_MASK ; 
 int WCD9XXX_A_ANA_RX_VNEG_EN_SHIFT ; 
 int WCD_USLEEP_RANGE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct wcd_clsh_ctrl *ctrl,
				  int mode,
				  bool enable)
{
	struct snd_soc_component *comp = ctrl->comp;

	/* enable/disable flyback */
	if ((enable && (++ctrl->flyback_users == 1)) ||
	   (!enable && (--ctrl->flyback_users == 0))) {
		FUNC0(comp, WCD9XXX_A_ANA_RX_SUPPLIES,
				WCD9XXX_A_ANA_RX_VNEG_EN_MASK,
				enable << WCD9XXX_A_ANA_RX_VNEG_EN_SHIFT);
		/* 100usec delay is needed as per HW requirement */
		FUNC1(100, 110);
	}
	/*
	 * 500us sleep is required after flyback enable/disable
	 * as per HW requirement
	 */
	FUNC1(500, 500 + WCD_USLEEP_RANGE);
}